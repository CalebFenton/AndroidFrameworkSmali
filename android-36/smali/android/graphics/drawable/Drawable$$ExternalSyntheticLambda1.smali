.class public final synthetic Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnPartialImageListener;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->lambda$getBitmapDrawable$0(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result p1

    return p1
.end method
