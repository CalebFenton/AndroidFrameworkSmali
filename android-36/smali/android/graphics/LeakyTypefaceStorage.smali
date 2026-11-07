.class public Landroid/graphics/LeakyTypefaceStorage;
.super Ljava/lang/Object;
.source "LeakyTypefaceStorage.java"


# static fields
.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static final greylist-max-o sStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sTypefaceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "pid":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "typefaceId":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_10

    .line 81
    const/4 v2, 0x0

    return-object v2

    .line 83
    :cond_10
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_13
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    monitor-exit v2

    return-object v3

    .line 85
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method public static greylist-max-o writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V
    .registers 7
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    sget-object v0, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_a
    sget-object v1, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 58
    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_19

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "id":I
    goto :goto_2d

    .line 61
    .end local v2    # "id":I
    :cond_19
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 62
    .restart local v2    # "id":I
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "id":I
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v1
.end method
