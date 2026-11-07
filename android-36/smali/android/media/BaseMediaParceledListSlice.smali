.class abstract Landroid/media/BaseMediaParceledListSlice;
.super Ljava/lang/Object;
.source "BaseMediaParceledListSlice.java"

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

.field private static final blacklist MAX_IPC_SIZE:I = 0x10000

.field private static blacklist TAG:Ljava/lang/String; = "BaseMediaParceledListSlice"


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
.method static bridge synthetic blacklist -$$Nest$fgetmList(Landroid/media/BaseMediaParceledListSlice;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Landroid/media/BaseMediaParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 12

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 57
    iput v0, p0, Landroid/media/BaseMediaParceledListSlice;->mInlineCountLimit:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    if-gtz v0, :cond_17

    goto/16 :goto_a1

    .line 72
    :cond_17
    invoke-virtual {p0, p1, p2}, Landroid/media/BaseMediaParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_1e
    if-ge v4, v0, :cond_41

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_27

    goto :goto_41

    .line 81
    :cond_27
    invoke-direct {p0, v1, p1, p2}, Landroid/media/BaseMediaParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_32

    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_39

    .line 85
    :cond_32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/media/BaseMediaParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 88
    :goto_39
    iget-object v6, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_41
    :goto_41
    if-lt v4, v0, :cond_44

    goto :goto_a1

    .line 96
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_48
    if-ge v4, v0, :cond_a1

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 101
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    .line 103
    :try_start_56
    invoke-interface {p1, v7, v5, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_82

    :goto_59
    if-ge v4, v0, :cond_7b

    .line 108
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7b

    .line 109
    invoke-direct {p0, v1, v6, p2}, Landroid/media/BaseMediaParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_6c

    .line 111
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_73

    .line 113
    :cond_6c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/media/BaseMediaParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 116
    :goto_73
    iget-object v8, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 121
    :cond_7b
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_48

    :catch_82
    move-exception p0

    .line 105
    sget-object p1, Landroid/media/BaseMediaParceledListSlice;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure retrieving array; only received "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a1
    :goto_a1
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 57
    iput v0, p0, Landroid/media/BaseMediaParceledListSlice;->mInlineCountLimit:I

    .line 60
    iput-object p1, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method private blacklist readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
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

    .line 127
    instance-of p0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz p0, :cond_b

    .line 128
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 130
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 132
    :cond_b
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in list of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_26

    .line 139
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    return-void
.end method


# virtual methods
.method public blacklist getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method

.method abstract blacklist readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
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

    .line 152
    iput p1, p0, Landroid/media/BaseMediaParceledListSlice;->mInlineCountLimit:I

    return-void
.end method

.method abstract blacklist writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method abstract blacklist writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 162
    iget-object v0, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_52

    .line 167
    iget-object v1, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 168
    iget-object v3, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Landroid/media/BaseMediaParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    move v3, v2

    :goto_20
    if-ge v3, v0, :cond_45

    .line 170
    iget v4, p0, Landroid/media/BaseMediaParceledListSlice;->mInlineCountLimit:I

    if-ge v3, v4, :cond_45

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_45

    const/4 v4, 0x1

    .line 171
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v4, p0, Landroid/media/BaseMediaParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/media/BaseMediaParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {p0, v4, p1, p2}, Landroid/media/BaseMediaParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_45
    if-ge v3, v0, :cond_52

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    new-instance v2, Landroid/media/BaseMediaParceledListSlice$1;

    invoke-direct {v2, p0, v0, v1, p2}, Landroid/media/BaseMediaParceledListSlice$1;-><init>(Landroid/media/BaseMediaParceledListSlice;ILjava/lang/Class;I)V

    .line 209
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_52
    return-void
.end method
