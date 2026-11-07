.class public final Landroid/media/internal/guava_common/primitives/Floats;
.super Landroid/media/internal/guava_common/primitives/FloatsMethodsForWeb;
.source "Floats.java"


# direct methods
.method public static blacklist hashCode(F)I
    .registers 1

    .line 74
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method
