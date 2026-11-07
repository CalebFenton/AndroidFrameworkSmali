.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 2559
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 2562
    const/4 v0, 0x0

    .local v0, "s1Int":I
    const/4 v1, 0x0

    .line 2564
    .local v1, "s2Int":I
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    .line 2567
    .end local v0    # "s1Int":I
    .local v2, "s1Int":I
    goto :goto_a

    .line 2565
    .end local v2    # "s1Int":I
    .restart local v0    # "s1Int":I
    :catch_7
    move-exception v2

    .line 2566
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    move v2, v0

    .line 2570
    .end local v0    # "s1Int":I
    .local v2, "s1Int":I
    :goto_a
    :try_start_a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    .line 2573
    .end local v1    # "s2Int":I
    .local v0, "s2Int":I
    goto :goto_12

    .line 2571
    .end local v0    # "s2Int":I
    .restart local v1    # "s2Int":I
    :catch_f
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    move v0, v1

    .line 2576
    .end local v1    # "s2Int":I
    .local v0, "s2Int":I
    :goto_12
    if-ltz v2, :cond_19

    if-ltz v0, :cond_19

    .line 2577
    sub-int v1, v2, v0

    return v1

    .line 2578
    :cond_19
    if-ltz v2, :cond_1d

    .line 2579
    const/4 v1, -0x1

    return v1

    .line 2580
    :cond_1d
    if-ltz v0, :cond_21

    .line 2581
    const/4 v1, 0x1

    return v1

    .line 2584
    :cond_21
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
