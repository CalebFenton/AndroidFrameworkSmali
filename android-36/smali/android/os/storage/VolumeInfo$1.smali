.class Landroid/os/storage/VolumeInfo$1;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/storage/VolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I
    .registers 5
    .param p1, "lhs"    # Landroid/os/storage/VolumeInfo;
    .param p2, "rhs"    # Landroid/os/storage/VolumeInfo;

    .line 115
    const-string/jumbo v0, "private"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    .line 116
    return v1

    .line 117
    :cond_f
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 118
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_17
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 120
    return v1

    .line 122
    :cond_1e
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

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

    .line 112
    check-cast p1, Landroid/os/storage/VolumeInfo;

    check-cast p2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0, p1, p2}, Landroid/os/storage/VolumeInfo$1;->compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I

    move-result p1

    return p1
.end method
