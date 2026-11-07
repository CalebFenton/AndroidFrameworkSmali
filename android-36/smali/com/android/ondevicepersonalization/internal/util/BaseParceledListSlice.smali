.class abstract Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;
.super Ljava/lang/Object;
.source "BaseParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z

.field private static final blacklist MAX_IPC_SIZE:I

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mInlineCountLimit:I

.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmList(Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMAX_IPC_SIZE()I
    .registers 1

    sget v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->MAX_IPC_SIZE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "ParceledListSlice"

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    .line 48
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->MAX_IPC_SIZE:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 21
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 59
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    const v0, 0x7fffffff

    iput v0, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mInlineCountLimit:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, "N":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 62
    sget-boolean v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_39
    if-gtz v3, :cond_3c

    .line 64
    return-void

    .line 67
    :cond_3c
    invoke-virtual/range {p0 .. p2}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v4

    .line 68
    .local v4, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v0, 0x0

    .line 70
    .local v0, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move/from16 v17, v5

    move-object v5, v0

    move/from16 v0, v17

    .line 71
    .local v0, "i":I
    .local v5, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_47
    const-string v6, ": "

    const/4 v7, 0x1

    if-ge v0, v3, :cond_a3

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_55

    .line 73
    move-object/from16 v8, p1

    goto :goto_a5

    .line 76
    :cond_55
    move-object/from16 v8, p1

    invoke-direct {v1, v4, v8, v2}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v9

    .line 77
    .local v9, "parcelable":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_62

    .line 78
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_69

    .line 80
    :cond_62
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 83
    :goto_69
    iget-object v10, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-boolean v10, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v10, :cond_9f

    sget-object v10, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read inline #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    iget-object v12, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_9f
    nop

    .end local v9    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    .line 87
    goto :goto_47

    .line 71
    :cond_a3
    move-object/from16 v8, p1

    .line 88
    :goto_a5
    if-lt v0, v3, :cond_a8

    .line 89
    return-void

    .line 91
    :cond_a8
    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    move v10, v0

    .line 92
    .end local v0    # "i":I
    .local v9, "retriever":Landroid/os/IBinder;
    .local v10, "i":I
    :goto_ad
    if-ge v10, v3, :cond_172

    .line 93
    sget-boolean v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    const-string v11, " of "

    if-eqz v0, :cond_df

    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reading more @"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": retriever="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_df
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 95
    .local v12, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 96
    .local v13, "reply":Landroid/os/Parcel;
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v0, 0x0

    :try_start_eb
    invoke-interface {v9, v7, v12, v13, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_ee} :catch_150

    .line 102
    nop

    .line 103
    :goto_ef
    if-ge v10, v3, :cond_144

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_144

    .line 104
    invoke-direct {v1, v4, v13, v2}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    iget-object v11, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-boolean v11, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v11, :cond_13c

    sget-object v11, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read extra #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    move/from16 v16, v7

    iget-object v7, v1, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    :cond_13c
    move/from16 v16, v7

    .line 110
    :goto_13e
    nop

    .end local v0    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v10, v10, 0x1

    .line 111
    move/from16 v7, v16

    goto :goto_ef

    .line 103
    :cond_144
    move/from16 v16, v7

    .line 112
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 114
    .end local v12    # "data":Landroid/os/Parcel;
    .end local v13    # "reply":Landroid/os/Parcel;
    move/from16 v7, v16

    goto/16 :goto_ad

    .line 99
    .restart local v12    # "data":Landroid/os/Parcel;
    .restart local v13    # "reply":Landroid/os/Parcel;
    :catch_150
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure retrieving array; only received "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    return-void

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "data":Landroid/os/Parcel;
    .end local v13    # "reply":Landroid/os/Parcel;
    :cond_172
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mInlineCountLimit:I

    .line 55
    iput-object p1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 56
    return-void
.end method

.method private blacklist readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_c

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 121
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_c
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 127
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const/4 v2, 0x0

    if-nez p1, :cond_18

    move-object v3, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in list of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    if-nez p0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_39
    return-void
.end method


# virtual methods
.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract blacklist readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation
.end method

.method public blacklist setInlineCountLimit(I)V
    .registers 2
    .param p1, "maxCount"    # I

    .line 143
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    iput p1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mInlineCountLimit:I

    .line 144
    return-void
.end method

.method protected abstract blacklist writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract blacklist writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, "N":I
    move v1, p2

    .line 155
    .local v1, "callFlags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    sget-boolean v2, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2c
    if-lez v0, :cond_d2

    .line 158
    iget-object v2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 159
    .local v2, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, "i":I
    :goto_43
    if-ge v4, v0, :cond_95

    iget v5, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mInlineCountLimit:I

    if-ge v4, v5, :cond_95

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    sget v6, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v5, v6, :cond_95

    .line 162
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v5, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 165
    .local v5, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 168
    sget-boolean v6, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v6, :cond_91

    sget-object v6, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote inline #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_91
    nop

    .end local v5    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 170
    goto :goto_43

    .line 171
    :cond_95
    if-ge v4, v0, :cond_d2

    .line 172
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    new-instance v3, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice$1;-><init>(Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;ILjava/lang/Class;I)V

    .line 199
    .local v3, "retriever":Landroid/os/Binder;
    sget-boolean v5, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->DEBUG:Z

    if-eqz v5, :cond_cf

    sget-object v5, Lcom/android/ondevicepersonalization/internal/util/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Breaking @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": retriever="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_cf
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 203
    .end local v2    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "retriever":Landroid/os/Binder;
    .end local v4    # "i":I
    :cond_d2
    return-void
.end method
