.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"

# interfaces
.implements Landroid/os/Parcel$ClassLoaderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final greylist-max-o BUNDLE_MAGIC:I = 0x4c444e42

.field private static final greylist-max-o BUNDLE_MAGIC_NATIVE:I = 0x4c444e44

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o FLAG_DEFUSABLE:I = 0x1

.field private static final greylist-max-o LOG_DEFUSABLE:Z = false

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "Bundle"

.field private static volatile greylist-max-o sShouldDefuse:Z


# instance fields
.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field public greylist-max-o mFlags:I

.field private blacklist mHasIntent:Z

.field private blacklist mLazyValues:I

.field greylist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOwnsLazyValues:Z

.field private greylist-max-o mParcelledByNative:Z

.field volatile greylist mParcelledData:Landroid/os/Parcel;

.field private blacklist mWeakParcelledData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 166
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 167
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 201
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 202
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/BaseBundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 212
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BaseBundle;Z)V
    .registers 10
    .param p1, "from"    # Landroid/os/BaseBundle;
    .param p2, "deep"    # Z

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 113
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 136
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 146
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 223
    monitor-enter p1

    .line 224
    :try_start_13
    iget-object v2, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v2, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 226
    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_52

    .line 227
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 228
    iput-boolean v1, p1, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 230
    if-nez p2, :cond_2b

    .line 231
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_54

    .line 233
    :cond_2b
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 234
    .local v0, "fromMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 235
    .local v2, "n":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 236
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v2, :cond_51

    .line 237
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 239
    .end local v0    # "fromMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_51
    goto :goto_54

    .line 241
    :cond_52
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 245
    :goto_54
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_7a

    .line 246
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 247
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 248
    .local v0, "parcelledData":Landroid/os/Parcel;
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 250
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    :cond_63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .restart local v0    # "parcelledData":Landroid/os/Parcel;
    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v3, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 252
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    .line 251
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 254
    iget-boolean v1, p1, Landroid/os/BaseBundle;->mParcelledByNative:Z

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 257
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    :cond_7a
    const/4 v0, 0x0

    .line 258
    .restart local v0    # "parcelledData":Landroid/os/Parcel;
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 262
    :goto_7d
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 263
    iget-boolean v1, p1, Landroid/os/BaseBundle;->mHasIntent:Z

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 264
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    monitor-exit p1

    .line 265
    return-void

    .line 264
    :catchall_85
    move-exception v0

    monitor-exit p1
    :try_end_87
    .catchall {:try_start_13 .. :try_end_87} :catchall_85

    throw v0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 113
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 136
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 146
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 177
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 113
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 136
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 146
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 181
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 192
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;I)V
    .registers 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 113
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 136
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 146
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 157
    if-lez p2, :cond_1a

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :goto_1f
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 159
    if-nez p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, p1

    :goto_2d
    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 160
    return-void
.end method

.method private greylist-max-o deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 680
    if-nez p1, :cond_4

    .line 681
    const/4 v0, 0x0

    return-object v0

    .line 683
    :cond_4
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 684
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 685
    :cond_10
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1c

    .line 686
    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    .line 687
    :cond_1c
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 688
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/os/BaseBundle;->deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 689
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 690
    instance-of v0, p1, [I

    if-eqz v0, :cond_3e

    .line 691
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 692
    :cond_3e
    instance-of v0, p1, [J

    if-eqz v0, :cond_4a

    .line 693
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 694
    :cond_4a
    instance-of v0, p1, [F

    if-eqz v0, :cond_56

    .line 695
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 696
    :cond_56
    instance-of v0, p1, [D

    if-eqz v0, :cond_62

    .line 697
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 698
    :cond_62
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_6e

    .line 699
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 700
    :cond_6e
    instance-of v0, p1, [B

    if-eqz v0, :cond_7a

    .line 701
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 702
    :cond_7a
    instance-of v0, p1, [S

    if-eqz v0, :cond_86

    .line 703
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 704
    :cond_86
    instance-of v0, p1, [C

    if-eqz v0, :cond_92

    .line 705
    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 708
    :cond_92
    return-object p1
.end method

.method private greylist-max-o deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "from"    # Ljava/util/ArrayList;

    .line 712
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    .local v1, "out":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 715
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 717
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V
    .registers 6
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "bundle"    # Landroid/os/BaseBundle;

    .line 1980
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1981
    if-nez p1, :cond_b

    .line 1982
    const-string v0, "[null]"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    return-void

    .line 1985
    :cond_b
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1986
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1987
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1986
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1989
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1990
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V
    .registers 5
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "array"    # Landroid/util/SparseArray;

    .line 1967
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1968
    if-nez p1, :cond_b

    .line 1969
    const-string v0, "[null]"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    return-void

    .line 1972
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 1973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1972
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1975
    .end local v0    # "i":I
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1976
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1950
    .local v0, "tmp":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1951
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1952
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1955
    const/16 v2, 0x400

    if-le v1, v2, :cond_47

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    instance-of v2, p2, Landroid/os/BaseBundle;

    if-eqz v2, :cond_3d

    .line 1958
    move-object v2, p2

    check-cast v2, Landroid/os/BaseBundle;

    invoke-static {p0, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    goto :goto_47

    .line 1959
    :cond_3d
    instance-of v2, p2, Landroid/util/SparseArray;

    if-eqz v2, :cond_47

    .line 1960
    move-object v2, p2

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {p0, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V

    .line 1963
    :cond_47
    :goto_47
    return-void
.end method

.method private greylist-max-o initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V
    .registers 15
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "ownsParcel"    # Z
    .param p3, "parcelledByNative"    # Z

    .line 474
    invoke-static {p1}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 479
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    .line 480
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1a

    .line 482
    :cond_15
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 484
    :goto_1a
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 485
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 486
    return-void

    .line 489
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 494
    .local v6, "count":I
    if-gez v6, :cond_26

    .line 495
    return-void

    .line 497
    :cond_26
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 498
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_32

    .line 499
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v6}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v0, v4

    move-object v5, v0

    goto :goto_39

    .line 501
    :cond_32
    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 502
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    move-object v5, v0

    .line 504
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_39
    filled-new-array {v3}, [I

    move-result-object v10

    .line 506
    .local v10, "numLazyValues":[I
    if-nez p3, :cond_41

    move v7, v1

    goto :goto_42

    :cond_41
    move v7, v3

    :goto_42
    move-object v9, p0

    move-object v4, p1

    move v8, p2

    .end local p1    # "parcelledData":Landroid/os/Parcel;
    .end local p2    # "ownsParcel":Z
    .local v4, "parcelledData":Landroid/os/Parcel;
    .local v8, "ownsParcel":Z
    :try_start_45
    invoke-virtual/range {v4 .. v10}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V
    :try_end_48
    .catch Landroid/os/BadParcelableException; {:try_start_45 .. :try_end_48} :catch_69
    .catchall {:try_start_45 .. :try_end_48} :catchall_66

    .line 516
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 517
    if-eqz v8, :cond_5b

    .line 518
    aget p1, v10, v3

    if-nez p1, :cond_54

    .line 519
    invoke-static {v4}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_5b

    .line 521
    :cond_54
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 525
    :cond_5b
    :goto_5b
    aget p1, v10, v3

    :goto_5d
    iput p1, v9, Landroid/os/BaseBundle;->mLazyValues:I

    .line 526
    iput-boolean v3, v9, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 527
    iput-object v5, v9, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 529
    iput-object v2, v9, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 530
    goto :goto_8f

    .line 516
    :catchall_66
    move-exception v0

    move-object p1, v0

    goto :goto_92

    .line 508
    :catch_69
    move-exception v0

    move-object p1, v0

    .line 509
    .local p1, "e":Landroid/os/BadParcelableException;
    :try_start_6b
    sget-boolean p2, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz p2, :cond_90

    .line 510
    const-string p2, "Bundle"

    const-string v0, "Failed to parse Bundle, but defusing quietly"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-virtual {v5}, Landroid/util/ArrayMap;->erase()V
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_66

    .line 516
    .end local p1    # "e":Landroid/os/BadParcelableException;
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 517
    if-eqz v8, :cond_8c

    .line 518
    aget p1, v10, v3

    if-nez p1, :cond_85

    .line 519
    invoke-static {v4}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_8c

    .line 521
    :cond_85
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 525
    :cond_8c
    :goto_8c
    aget p1, v10, v3

    goto :goto_5d

    .line 535
    :goto_8f
    return-void

    .line 513
    .restart local p1    # "e":Landroid/os/BadParcelableException;
    :cond_90
    nop

    .end local v4    # "parcelledData":Landroid/os/Parcel;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "count":I
    .end local v8    # "ownsParcel":Z
    .end local v10    # "numLazyValues":[I
    .end local p0    # "this":Landroid/os/BaseBundle;
    .end local p3    # "parcelledByNative":Z
    :try_start_91
    throw p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_66

    .line 516
    .end local p1    # "e":Landroid/os/BadParcelableException;
    .restart local v4    # "parcelledData":Landroid/os/Parcel;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "count":I
    .restart local v8    # "ownsParcel":Z
    .restart local v10    # "numLazyValues":[I
    .restart local p0    # "this":Landroid/os/BaseBundle;
    .restart local p3    # "parcelledByNative":Z
    :goto_92
    iput-object v2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 517
    if-eqz v8, :cond_a5

    .line 518
    aget p2, v10, v3

    if-nez p2, :cond_9e

    .line 519
    invoke-static {v4}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_a5

    .line 521
    :cond_9e
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, v9, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 525
    :cond_a5
    :goto_a5
    aget p2, v10, v3

    iput p2, v9, Landroid/os/BaseBundle;->mLazyValues:I

    .line 526
    iput-boolean v3, v9, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 527
    iput-object v5, v9, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 529
    iput-object v2, v9, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 530
    throw p1
.end method

.method private static greylist-max-o isEmptyParcel(Landroid/os/Parcel;)Z
    .registers 2
    .param p0, "p"    # Landroid/os/Parcel;

    .line 556
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 3
    .param p0, "a"    # Landroid/os/BaseBundle;
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 629
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private greylist-max-o readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 1897
    if-ltz p2, :cond_9f

    .line 1899
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 1900
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1902
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1903
    return-void

    .line 1904
    :cond_c
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_86

    .line 1908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1909
    .local v1, "magic":I
    const v2, 0x4c444e42    # 5.146036E7f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v0

    .line 1910
    .local v2, "isJavaBundle":Z
    :goto_1d
    const v4, 0x4c444e44

    if-ne v1, v4, :cond_24

    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v0

    .line 1911
    .local v4, "isNativeBundle":Z
    :goto_25
    if-nez v2, :cond_47

    if-eqz v4, :cond_2a

    goto :goto_47

    .line 1912
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1913
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1916
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1921
    monitor-enter p0

    .line 1922
    :try_start_4e
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1923
    invoke-direct {p0, p1, v0, v4}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 1924
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_5b

    .line 1925
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1926
    return-void

    .line 1924
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 1930
    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 1931
    .local v5, "offset":I
    invoke-static {v5, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1934
    .local v6, "p":Landroid/os/Parcel;
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1935
    invoke-virtual {v6, p1, v5, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1936
    invoke-virtual {v6, p1}, Landroid/os/Parcel;->adoptClassCookies(Landroid/os/Parcel;)V

    .line 1939
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1941
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1942
    iput-boolean v4, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1943
    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1944
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1945
    return-void

    .line 1905
    .end local v1    # "magic":I
    .end local v2    # "isJavaBundle":Z
    .end local v4    # "isNativeBundle":Z
    .end local v5    # "offset":I
    .end local v6    # "p":Landroid/os/Parcel;
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bundle length is not aligned by 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1898
    :cond_9f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad length in parcel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o recycleParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p0, "p"    # Landroid/os/Parcel;

    .line 560
    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 561
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 563
    :cond_b
    return-void
.end method

.method public static greylist-max-o setShouldDefuse(Z)V
    .registers 1
    .param p0, "shouldDefuse"    # Z

    .line 91
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 92
    return-void
.end method

.method private varargs blacklist unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 443
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 444
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_6f

    .line 446
    const/4 v1, 0x0

    :try_start_b
    move-object v2, v0

    check-cast v2, Ljava/util/function/BiFunction;

    invoke-interface {v2, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_12} :catch_42

    move-object v0, v2

    .line 454
    nop

    .line 455
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget v2, p0, Landroid/os/BaseBundle;->mLazyValues:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 457
    iget-boolean v2, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz v2, :cond_6f

    .line 458
    iget v2, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-ltz v2, :cond_28

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    const-string v2, "Lazy values ref count below 0"

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 462
    iget-object v2, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 463
    .local v2, "parcel":Landroid/os/Parcel;
    iget v3, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-nez v3, :cond_6f

    if-eqz v2, :cond_6f

    .line 464
    invoke-static {v2}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    .line 465
    iput-object v1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    goto :goto_6f

    .line 447
    .end local v2    # "parcel":Landroid/os/Parcel;
    :catch_42
    move-exception v2

    .line 448
    .local v2, "e":Landroid/os/BadParcelableException;
    sget-boolean v3, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v3, :cond_6e

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Bundle"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    return-object v1

    .line 452
    :cond_6e
    throw v2

    .line 469
    .end local v2    # "e":Landroid/os/BadParcelableException;
    :cond_6f
    :goto_6f
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 668
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 669
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    .line 670
    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    .line 673
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 676
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 677
    return-void
.end method

.method public whitelist containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 729
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 744
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 745
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 765
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 767
    :try_start_3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_d} :catch_e
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    .line 768
    :catch_e
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 770
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1555
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1557
    :try_start_3
    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 1558
    :catch_18
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayList<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1560
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1184
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1185
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1186
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1187
    return p2

    .line 1190
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 1191
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1192
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1193
    return p2
.end method

.method public whitelist getBooleanArray(Ljava/lang/String;)[Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1613
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1614
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1615
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1616
    return-object v1

    .line 1619
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [Z
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1620
    :catch_11
    move-exception v2

    .line 1621
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1622
    return-object v1
.end method

.method greylist-max-o getByte(Ljava/lang/String;)B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1205
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method greylist-max-o getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 1218
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1219
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1220
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_10

    .line 1221
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_10
    :try_start_10
    move-object v0, v3

    check-cast v0, Ljava/lang/Byte;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_13} :catch_14

    return-object v0

    .line 1225
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1226
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1227
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getByteArray(Ljava/lang/String;)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1636
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1637
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1638
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1639
    return-object v1

    .line 1642
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [B
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1643
    :catch_11
    move-exception v2

    .line 1644
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1645
    return-object v1
.end method

.method greylist-max-o getChar(Ljava/lang/String;)C
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1239
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method greylist-max-o getChar(Ljava/lang/String;C)C
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 1252
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1253
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1254
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1255
    return p2

    .line 1258
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 1259
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1260
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1261
    return p2
.end method

.method greylist-max-o getCharArray(Ljava/lang/String;)[C
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1682
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1683
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1684
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1685
    return-object v1

    .line 1688
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [C
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1689
    :catch_11
    move-exception v2

    .line 1690
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1691
    return-object v1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1481
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1482
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1484
    .local v0, "o":Ljava/lang/Object;
    :try_start_9
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_c} :catch_d

    return-object v1

    .line 1485
    :catch_d
    move-exception v1

    .line 1486
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1487
    const/4 v2, 0x0

    return-object v2
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 1503
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1504
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method greylist-max-o getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1820
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1821
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1822
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1823
    return-object v1

    .line 1826
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1827
    :catch_11
    move-exception v2

    .line 1828
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1829
    return-object v1
.end method

.method greylist-max-o getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1600
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getDouble(Ljava/lang/String;)D
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1409
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1410
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDouble(Ljava/lang/String;D)D
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1422
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1423
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1424
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1425
    return-wide p2

    .line 1428
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide v0

    .line 1429
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1430
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1431
    return-wide p2
.end method

.method public whitelist getDoubleArray(Ljava/lang/String;)[D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1774
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1775
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1776
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1777
    return-object v1

    .line 1780
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [D
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1781
    :catch_11
    move-exception v2

    .line 1782
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1783
    return-object v1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1375
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 1388
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1389
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1390
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1391
    return p2

    .line 1394
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 1395
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1396
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1397
    return p2
.end method

.method greylist-max-o getFloatArray(Ljava/lang/String;)[F
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1751
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1752
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1753
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1754
    return-object v1

    .line 1757
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [F
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1758
    :catch_11
    move-exception v2

    .line 1759
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1760
    return-object v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1307
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1320
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1321
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1322
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1323
    return p2

    .line 1326
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 1327
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1328
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1329
    return p2
.end method

.method public whitelist getIntArray(Ljava/lang/String;)[I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1705
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1706
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1707
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1708
    return-object v1

    .line 1711
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [I
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1712
    :catch_11
    move-exception v2

    .line 1713
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "int[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1714
    return-object v1
.end method

.method greylist-max-o getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1574
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist getItemwiseMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 576
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1341
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1342
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1354
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1355
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1356
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1357
    return-wide p2

    .line 1360
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide v0

    .line 1361
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1362
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1363
    return-wide p2
.end method

.method public whitelist getLongArray(Ljava/lang/String;)[J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1728
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1729
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1730
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1731
    return-object v1

    .line 1734
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [J
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1735
    :catch_11
    move-exception v2

    .line 1736
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "long[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1737
    return-object v1
.end method

.method public greylist-max-o getPairValue()Ljava/lang/String;
    .registers 6

    .line 287
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 288
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 289
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 290
    const-string v1, "Bundle"

    const-string v2, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_13
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 293
    return-object v1

    .line 296
    :cond_17
    :try_start_17
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v2, v4}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_22} :catch_23
    .catch Landroid/os/BadTypeParcelableException; {:try_start_17 .. :try_end_22} :catch_23

    return-object v2

    .line 297
    :catch_23
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "getPairValue()"

    const-string v4, "String"

    invoke-virtual {p0, v3, v4, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 299
    return-object v1
.end method

.method greylist-max-o getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1522
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1523
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1524
    return-object v1

    .line 1527
    :cond_b
    :try_start_b
    move-object v2, v0

    check-cast v2, Ljava/io/Serializable;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_f

    return-object v2

    .line 1528
    :catch_f
    move-exception v2

    .line 1529
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Serializable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1530
    return-object v1
.end method

.method blacklist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1548
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method greylist-max-o getShort(Ljava/lang/String;)S
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1273
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method greylist-max-o getShort(Ljava/lang/String;S)S
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 1286
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1287
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1288
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_c

    .line 1289
    return p2

    .line 1292
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return v0

    .line 1293
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1294
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1295
    return p2
.end method

.method greylist-max-o getShortArray(Ljava/lang/String;)[S
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1659
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1660
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1661
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1662
    return-object v1

    .line 1665
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [S
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1666
    :catch_11
    move-exception v2

    .line 1667
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1668
    return-object v1
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1445
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1446
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1448
    .local v0, "o":Ljava/lang/Object;
    :try_start_9
    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_c} :catch_d

    return-object v1

    .line 1449
    :catch_d
    move-exception v1

    .line 1450
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1451
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1467
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1797
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1798
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1799
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1800
    return-object v1

    .line 1803
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, [Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 1804
    :catch_11
    move-exception v2

    .line 1805
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1806
    return-object v1
.end method

.method greylist-max-o getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1587
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 380
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final varargs blacklist getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 396
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 397
    .local v0, "i":I
    if-ltz v0, :cond_d

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method final varargs blacklist getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 423
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1e

    .line 425
    monitor-enter p0

    .line 426
    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/BaseBundle;->unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 427
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1b

    .line 428
    iget v1, p0, Landroid/os/BaseBundle;->mFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_28

    .line 429
    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V

    goto :goto_28

    .line 427
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 431
    :cond_1e
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_28

    .line 432
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    .line 433
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V

    .line 435
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_28
    :goto_28
    if-eqz p2, :cond_2f

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    return-object v1
.end method

.method public blacklist hasIntent()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    return v0
.end method

.method public blacklist isDefinitelyEmpty()Z
    .registers 2

    .line 608
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 609
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    return v0

    .line 611
    :cond_b
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 593
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 594
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmptyParcel()Z
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isParcelled()Z
    .registers 2

    .line 542
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isValueParceled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 406
    :cond_6
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 407
    .local v0, "i":I
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/function/BiFunction;

    return v1
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 812
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o kindofEquals(Landroid/os/BaseBundle;)Z
    .registers 6
    .param p1, "other"    # Landroid/os/BaseBundle;

    .line 641
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 642
    return v0

    .line 644
    :cond_4
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 645
    return v2

    .line 647
    :cond_12
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    .line 649
    return v0

    .line 650
    :cond_1d
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 651
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v3, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;)I

    move-result v1

    if-nez v1, :cond_2e

    move v0, v2

    :cond_2e
    return v0

    .line 659
    :cond_2f
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist putAll(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 790
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 791
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 792
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 793
    return-void
.end method

.method greylist-max-o putAll(Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "map"    # Landroid/util/ArrayMap;

    .line 801
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 802
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 803
    return-void
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 852
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 853
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    return-void
.end method

.method public whitelist putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 1020
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1021
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    return-void
.end method

.method greylist-max-o putByte(Ljava/lang/String;B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 864
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 865
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    return-void
.end method

.method greylist-max-o putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 1032
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1033
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    return-void
.end method

.method greylist-max-o putChar(Ljava/lang/String;C)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 876
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 877
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    return-void
.end method

.method greylist-max-o putCharArray(Ljava/lang/String;[C)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 1056
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1057
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    return-void
.end method

.method greylist-max-o putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 960
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 961
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    return-void
.end method

.method greylist-max-o putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 1128
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1129
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    return-void
.end method

.method greylist-max-o putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 996
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 997
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return-void
.end method

.method public whitelist putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 936
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 937
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    return-void
.end method

.method public whitelist putDoubleArray(Ljava/lang/String;[D)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 1104
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1105
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    return-void
.end method

.method greylist-max-o putFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 924
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 925
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-void
.end method

.method greylist-max-o putFloatArray(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 1092
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1093
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    return-void
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 900
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 901
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    return-void
.end method

.method public whitelist putIntArray(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 1068
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1069
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    return-void
.end method

.method greylist-max-o putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 972
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 973
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    return-void
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 912
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 913
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    return-void
.end method

.method public whitelist putLongArray(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 1080
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1081
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 817
    if-nez p2, :cond_8

    .line 818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_86

    .line 819
    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 820
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_86

    .line 821
    :cond_18
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    .line 822
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_86

    .line 823
    :cond_27
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_36

    .line 824
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_86

    .line 825
    :cond_36
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_45

    .line 826
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_86

    .line 827
    :cond_45
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 828
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    .line 829
    :cond_50
    instance-of v0, p2, [Z

    if-eqz v0, :cond_5b

    .line 830
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_86

    .line 831
    :cond_5b
    instance-of v0, p2, [I

    if-eqz v0, :cond_66

    .line 832
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_86

    .line 833
    :cond_66
    instance-of v0, p2, [J

    if-eqz v0, :cond_71

    .line 834
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_86

    .line 835
    :cond_71
    instance-of v0, p2, [D

    if-eqz v0, :cond_7c

    .line 836
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_86

    .line 837
    :cond_7c
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 838
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    :goto_86
    return-void

    .line 840
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 1008
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1009
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    return-void
.end method

.method greylist-max-o putShort(Ljava/lang/String;S)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 888
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 889
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    return-void
.end method

.method greylist-max-o putShortArray(Ljava/lang/String;[S)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 1044
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1045
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    return-void
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 948
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 949
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    return-void
.end method

.method public whitelist putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 1116
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1117
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    return-void
.end method

.method greylist-max-o putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 984
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 985
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    return-void
.end method

.method greylist-max-o readFromParcelInner(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1893
    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1894
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 780
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 781
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-void
.end method

.method greylist-max-o setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 310
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 311
    return-void
.end method

.method public blacklist setHasIntent(Z)V
    .registers 2
    .param p1, "hasIntent"    # Z

    .line 274
    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 275
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 585
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 586
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/RuntimeException;

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    if-eqz p2, :cond_28

    .line 1155
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1158
    :cond_28
    const-string v1, " but value was of a different type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :goto_2d
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1162
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v2, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/RuntimeException;

    .line 1168
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "className":Ljava/lang/String;
    .end local p4    # "e":Ljava/lang/RuntimeException;
    .local v1, "key":Ljava/lang/String;
    .local v2, "value":Ljava/lang/Object;
    .local v3, "className":Ljava/lang/String;
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1169
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/RuntimeException;

    .line 1172
    const/4 v2, 0x0

    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "e":Ljava/lang/RuntimeException;
    .local v1, "key":Ljava/lang/String;
    .local v3, "className":Ljava/lang/String;
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1173
    return-void
.end method

.method final greylist unparcel()V
    .registers 2

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 328
    return-void
.end method

.method final blacklist unparcel(Z)V
    .registers 7
    .param p1, "itemwise"    # Z

    .line 332
    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 334
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_10

    .line 335
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 336
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 344
    :cond_10
    if-eqz p1, :cond_25

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_19
    if-ge v1, v2, :cond_25

    .line 353
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 356
    .end local v0    # "source":Landroid/os/Parcel;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_25
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method greylist-max-o writeToParcelInner(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1840
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1841
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 1846
    :cond_a
    monitor-enter p0

    .line 1849
    :try_start_b
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const v1, 0x4c444e42    # 5.146036E7f

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 1850
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v3, :cond_1d

    .line 1851
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1853
    :cond_1d
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1854
    .local v0, "length":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    iget-boolean v3, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    if-eqz v3, :cond_2d

    const v1, 0x4c444e44

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1857
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1859
    .end local v0    # "length":I
    :goto_3a
    monitor-exit p0

    return-void

    .line 1861
    :cond_3c
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 1862
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_73

    .line 1865
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-gtz v3, :cond_48

    goto :goto_6f

    .line 1869
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1870
    .local v2, "lengthPos":I
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1871
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1873
    .local v1, "startPos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1874
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1877
    .local v3, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1878
    sub-int v4, v3, v1

    .line 1879
    .local v4, "length":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1881
    iget-boolean v5, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1882
    return-void

    .line 1866
    .end local v1    # "startPos":I
    .end local v2    # "lengthPos":I
    .end local v3    # "endPos":I
    .end local v4    # "length":I
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    return-void

    .line 1862
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method
