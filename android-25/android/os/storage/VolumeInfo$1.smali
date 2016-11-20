.class final Landroid/os/storage/VolumeInfo$1;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/storage/VolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I
    .locals 3
    .param p1, "lhs"    # Landroid/os/storage/VolumeInfo;
    .param p2, "rhs"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 105
    const-string/jumbo v0, "private"

    #@4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 106
    return v2

    #@f
    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 108
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 110
    return v2

    #@1e
    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    check-cast p1, Landroid/os/storage/VolumeInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/os/storage/VolumeInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/storage/VolumeInfo$1;->compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
