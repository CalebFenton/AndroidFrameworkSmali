.class abstract Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;
.super Ljava/lang/Object;
.source "BaseOdpParceledListSlice.java"

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
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_IPC_SIZE:I

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


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
.method static bridge synthetic blacklist -$$Nest$fgetmList(Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMAX_IPC_SIZE()I
    .registers 1

    sget v0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->MAX_IPC_SIZE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    .line 43
    const-class v0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->MAX_IPC_SIZE:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 15
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 55
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mInlineCountLimit:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "numItems":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    .line 59
    if-gtz v0, :cond_16

    .line 60
    return-void

    .line 63
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    .line 64
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v2, 0x0

    .line 66
    .local v2, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 67
    .local v3, "i":I
    :goto_1c
    if-ge v3, v0, :cond_40

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_25

    .line 69
    goto :goto_40

    .line 72
    :cond_25
    invoke-direct {p0, v1, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "parcelable":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_30

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_37

    .line 76
    :cond_30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 79
    :goto_37
    iget-object v5, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    nop

    .end local v4    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_1c

    .line 84
    :cond_40
    :goto_40
    if-lt v3, v0, :cond_43

    .line 85
    return-void

    .line 87
    :cond_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 88
    .local v4, "retriever":Landroid/os/IBinder;
    :goto_47
    if-ge v3, v0, :cond_a9

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 94
    .local v5, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 95
    .local v6, "reply":Landroid/os/Parcel;
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_56
    invoke-interface {v4, v8, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_7d

    .line 102
    nop

    .line 103
    :goto_5a
    if-ge v3, v0, :cond_76

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_76

    .line 104
    invoke-direct {p0, v1, v6, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    .line 105
    .local v7, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    iget-object v8, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    nop

    .end local v7    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_5a

    .line 114
    :cond_76
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 116
    .end local v5    # "data":Landroid/os/Parcel;
    .end local v6    # "reply":Landroid/os/Parcel;
    goto :goto_47

    .line 98
    .restart local v5    # "data":Landroid/os/Parcel;
    .restart local v6    # "reply":Landroid/os/Parcel;
    :catch_7d
    move-exception v8

    .line 99
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Failure retrieving array; only received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v10, v7}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    return-void

    .line 117
    .end local v5    # "data":Landroid/os/Parcel;
    .end local v6    # "reply":Landroid/os/Parcel;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a9
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mInlineCountLimit:I

    .line 51
    iput-object p1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    .line 52
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

    .line 128
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_c

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 131
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 133
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

    .line 120
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
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

    .line 123
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

    .line 125
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

    .line 137
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

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

    .line 145
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    iput p1, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mInlineCountLimit:I

    .line 146
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
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 156
    .local v0, "numItems":I
    move v1, p2

    .line 157
    .local v1, "callFlags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    if-lez v0, :cond_54

    .line 160
    iget-object v2, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 161
    .local v2, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, "i":I
    :goto_21
    if-ge v4, v0, :cond_47

    iget v5, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mInlineCountLimit:I

    if-ge v4, v5, :cond_47

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    sget v6, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->MAX_IPC_SIZE:I

    if-ge v5, v6, :cond_47

    .line 164
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v5, p0, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 167
    .local v5, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 171
    nop

    .end local v5    # "parcelable":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 172
    goto :goto_21

    .line 173
    :cond_47
    if-ge v4, v0, :cond_54

    .line 174
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    new-instance v3, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice$1;-><init>(Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;ILjava/lang/Class;I)V

    .line 207
    .local v3, "retriever":Landroid/os/Binder;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    .end local v2    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "retriever":Landroid/os/Binder;
    .end local v4    # "i":I
    :cond_54
    return-void
.end method
