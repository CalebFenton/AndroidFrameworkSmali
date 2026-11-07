.class public Landroid/media/session/ParcelableListBinder;
.super Landroid/os/Binder;
.source "ParcelableListBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# static fields
.field private static final blacklist END_OF_PARCEL:I = 0x0

.field private static final blacklist ITEM_CONTINUED:I = 0x1

.field private static final blacklist SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private blacklist mConsumed:Z

.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist mCount:I

.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mListElementsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Landroid/media/session/ParcelableListBinder;, "Landroid/media/session/ParcelableListBinder<TT;>;"
    .local p1, "listElementsClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 69
    iput-object p1, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    .line 70
    iput-object p2, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    .line 71
    return-void
.end method

.method public static blacklist send(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 10
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    .local v0, "count":I
    const/4 v1, 0x0

    .line 122
    .local v1, "i":I
    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 123
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 124
    .local v3, "reply":Landroid/os/Parcel;
    if-nez v1, :cond_12

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    :cond_12
    :goto_12
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v0, :cond_2d

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sget v7, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v6, v7, :cond_2d

    .line 128
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 132
    :cond_2d
    if-ge v1, v0, :cond_32

    .line 133
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :cond_32
    invoke-interface {p0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 138
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    if-lt v1, v0, :cond_5

    .line 139
    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    .local p0, "this":Landroid/media/session/ParcelableListBinder;, "Landroid/media/session/ParcelableListBinder<TT;>;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 80
    :cond_8
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_b
    iget-boolean v2, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    if-eqz v2, :cond_12

    .line 82
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 84
    :cond_12
    iget-object v2, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 85
    .local v2, "i":I
    if-nez v2, :cond_20

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    .line 88
    :cond_20
    :goto_20
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-ge v2, v3, :cond_47

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .line 90
    .local v3, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 94
    iget-object v4, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Landroid/os/Parcelable;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_43
    nop

    .end local v3    # "object":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_20

    .line 98
    :cond_47
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-lt v2, v3, :cond_50

    .line 99
    iget-object v3, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 100
    .local v3, "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-boolean v0, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    goto :goto_51

    .line 102
    .end local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_50
    const/4 v3, 0x0

    .line 104
    .end local v2    # "i":I
    .restart local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_b .. :try_end_52} :catchall_5a

    .line 105
    if-eqz v3, :cond_59

    .line 106
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    :cond_59
    return v0

    .line 104
    .end local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method
