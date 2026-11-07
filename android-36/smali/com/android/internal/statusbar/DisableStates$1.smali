.class Lcom/android/internal/statusbar/DisableStates$1;
.super Ljava/lang/Object;
.source "DisableStates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/DisableStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/statusbar/DisableStates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/DisableStates;
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v1, "displaysWithStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_2f

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .local v4, "first":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    .local v5, "second":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v3    # "key":I
    .end local v4    # "first":I
    .end local v5    # "second":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 85
    .end local v2    # "i":I
    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 86
    .local v2, "animate":Z
    new-instance v3, Lcom/android/internal/statusbar/DisableStates;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/statusbar/DisableStates;-><init>(Ljava/util/Map;Z)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/DisableStates$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/DisableStates;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/statusbar/DisableStates;
    .registers 3
    .param p1, "size"    # I

    .line 91
    new-array v0, p1, [Lcom/android/internal/statusbar/DisableStates;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/DisableStates$1;->newArray(I)[Lcom/android/internal/statusbar/DisableStates;

    move-result-object p1

    return-object p1
.end method
