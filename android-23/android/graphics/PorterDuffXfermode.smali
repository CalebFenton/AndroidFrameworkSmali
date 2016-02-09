.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# instance fields
.field public final mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    #@5
    .line 32
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@7
    invoke-static {v0}, Landroid/graphics/PorterDuffXfermode;->nativeCreateXfermode(I)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/PorterDuffXfermode;->native_instance:J

    #@d
    .line 30
    return-void
.end method

.method private static native nativeCreateXfermode(I)J
.end method
