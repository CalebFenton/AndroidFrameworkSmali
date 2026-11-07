.class public Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/util/Size;Landroid/util/Size;)I
    .registers 7
    .param p1, "lhs"    # Landroid/util/Size;
    .param p2, "rhs"    # Landroid/util/Size;

    .line 2440
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2441
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 2440
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->compareSizes(IIII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2437
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
