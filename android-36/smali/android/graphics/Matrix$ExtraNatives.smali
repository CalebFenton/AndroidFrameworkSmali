.class Landroid/graphics/Matrix$ExtraNatives;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraNatives"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native blacklist nCreate(J)J
.end method

.method static native blacklist nGetNativeFinalizer()J
.end method
