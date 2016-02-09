.class public Landroid/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ParceledListSlice$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p0, "expected"    # Ljava/lang/Class;
    .param p1, "actual"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, "ParceledListSlice"

    #@3
    sput-object v0, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@5
    .line 43
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@8
    .line 198
    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    #@a
    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    #@d
    .line 197
    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@f
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 58
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    .line 60
    .local v0, "N":I
    new-instance v9, Ljava/util/ArrayList;

    #@9
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    iput-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@e
    .line 61
    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@10
    if-eqz v9, :cond_0

    #@12
    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@14
    new-instance v10, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v11, "Retrieving "

    #@1c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    const-string/jumbo v11, " items"

    #@27
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v10

    #@2b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 62
    :cond_0
    if-gtz v0, :cond_1

    #@34
    .line 63
    return-void

    #@35
    .line 66
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    #@38
    move-result-object v1

    #@39
    .line 67
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v5, 0x0

    #@3a
    .line 69
    .local v5, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@3b
    .line 70
    .end local v5    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@3d
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v9

    #@41
    if-nez v9, :cond_3

    #@43
    .line 87
    :cond_2
    if-lt v4, v0, :cond_6

    #@45
    .line 88
    return-void

    #@46
    .line 75
    :cond_3
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@49
    move-result-object v6

    #@4a
    .line 76
    .local v6, "parcelable":Landroid/os/Parcelable;, "TT;"
    if-nez v5, :cond_5

    #@4c
    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4f
    move-result-object v5

    #@50
    .line 82
    :goto_1
    iget-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@52
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    .line 84
    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@57
    if-eqz v9, :cond_4

    #@59
    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@5b
    new-instance v10, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v11, "Read inline #"

    #@63
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    const-string/jumbo v11, ": "

    #@6e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    iget-object v11, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@74
    iget-object v12, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@76
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@79
    move-result v12

    #@7a
    add-int/lit8 v12, v12, -0x1

    #@7c
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v10

    #@88
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 85
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 79
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@91
    move-result-object v9

    #@92
    invoke-static {v5, v9}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    #@95
    goto :goto_1

    #@96
    .line 90
    .end local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99
    move-result-object v8

    #@9a
    .line 91
    .local v8, "retriever":Landroid/os/IBinder;
    :goto_2
    if-ge v4, v0, :cond_a

    #@9c
    .line 92
    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@9e
    if-eqz v9, :cond_7

    #@a0
    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@a2
    new-instance v10, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v11, "Reading more @"

    #@aa
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v10

    #@b2
    const-string/jumbo v11, " of "

    #@b5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v10

    #@b9
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    const-string/jumbo v11, ": retriever="

    #@c0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v10

    #@c4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v10

    #@cc
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    .line 93
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d2
    move-result-object v2

    #@d3
    .line 94
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@d6
    move-result-object v7

    #@d7
    .line 95
    .local v7, "reply":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@da
    .line 97
    const/4 v9, 0x1

    #@db
    const/4 v10, 0x0

    #@dc
    :try_start_0
    invoke-interface {v8, v9, v2, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@df
    .line 102
    :goto_3
    if-ge v4, v0, :cond_9

    #@e1
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v9

    #@e5
    if-eqz v9, :cond_9

    #@e7
    .line 103
    invoke-virtual {v7, v1, p2}, Landroid/os/Parcel;->readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@ea
    move-result-object v6

    #@eb
    .line 104
    .restart local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ee
    move-result-object v9

    #@ef
    invoke-static {v5, v9}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    #@f2
    .line 106
    iget-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@f4
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f7
    .line 108
    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@f9
    if-eqz v9, :cond_8

    #@fb
    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@fd
    new-instance v10, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v11, "Read extra #"

    #@105
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v10

    #@109
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v10

    #@10d
    const-string/jumbo v11, ": "

    #@110
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v10

    #@114
    iget-object v11, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@116
    iget-object v12, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@118
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@11b
    move-result v12

    #@11c
    add-int/lit8 v12, v12, -0x1

    #@11e
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@121
    move-result-object v11

    #@122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v10

    #@126
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v10

    #@12a
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    .line 109
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@12f
    goto :goto_3

    #@130
    .line 98
    .end local v6    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :catch_0
    move-exception v3

    #@131
    .line 99
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@133
    new-instance v10, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v11, "Failure retrieving array; only received "

    #@13b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v10

    #@13f
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    move-result-object v10

    #@143
    const-string/jumbo v11, " of "

    #@146
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v10

    #@14a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v10

    #@152
    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@155
    .line 100
    return-void

    #@156
    .line 111
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    #@159
    .line 112
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@15c
    goto/16 :goto_2

    #@15e
    .line 58
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v7    # "reply":Landroid/os/Parcel;
    :cond_a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@5
    .line 53
    return-void
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Can\'t unparcel type "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 119
    const-string/jumbo v2, " in list of type "

    #@1f
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 120
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    #@0
    .prologue
    .line 130
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 131
    .local v0, "contents":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 132
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/Parcelable;

    #@12
    invoke-interface {v2}, Landroid/os/Parcelable;->describeContents()I

    #@15
    move-result v2

    #@16
    or-int/2addr v0, v2

    #@17
    .line 131
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 134
    :cond_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    iget-object v0, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v9, 0x0

    #@1
    .line 144
    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@3
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .line 145
    .local v0, "N":I
    move v1, p2

    #@8
    .line 146
    .local v1, "callFlags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 147
    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@d
    if-eqz v6, :cond_0

    #@f
    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "Writing "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    const-string/jumbo v8, " items"

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 148
    :cond_0
    if-lez v0, :cond_4

    #@31
    .line 149
    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@33
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Landroid/os/Parcelable;

    #@39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3c
    move-result-object v3

    #@3d
    .line 150
    .local v3, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@3f
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Landroid/os/Parcelable;

    #@45
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    #@48
    .line 151
    const/4 v2, 0x0

    #@49
    .line 152
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@4b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    #@4e
    move-result v6

    #@4f
    const/high16 v7, 0x10000

    #@51
    if-ge v6, v7, :cond_2

    #@53
    .line 153
    const/4 v6, 0x1

    #@54
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 155
    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@59
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    check-cast v4, Landroid/os/Parcelable;

    #@5f
    .line 156
    .local v4, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@62
    move-result-object v6

    #@63
    invoke-static {v3, v6}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    #@66
    .line 157
    invoke-interface {v4, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@69
    .line 159
    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@6b
    if-eqz v6, :cond_1

    #@6d
    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@6f
    new-instance v7, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v8, "Wrote inline #"

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    const-string/jumbo v8, ": "

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    iget-object v8, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    #@88
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v8

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@99
    goto :goto_0

    #@9a
    .line 162
    .end local v4    # "parcelable":Landroid/os/Parcelable;, "TT;"
    :cond_2
    if-ge v2, v0, :cond_4

    #@9c
    .line 163
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    .line 164
    new-instance v5, Landroid/content/pm/ParceledListSlice$2;

    #@a1
    invoke-direct {v5, p0, v0, v3, v1}, Landroid/content/pm/ParceledListSlice$2;-><init>(Landroid/content/pm/ParceledListSlice;ILjava/lang/Class;I)V

    #@a4
    .line 190
    .local v5, "retriever":Landroid/os/Binder;
    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    #@a6
    if-eqz v6, :cond_3

    #@a8
    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    #@aa
    new-instance v7, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v8, "Breaking @"

    #@b2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    const-string/jumbo v8, " of "

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    const-string/jumbo v8, ": retriever="

    #@c8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v7

    #@d4
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 191
    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@da
    .line 143
    .end local v2    # "i":I
    .end local v3    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "retriever":Landroid/os/Binder;
    :cond_4
    return-void
.end method
