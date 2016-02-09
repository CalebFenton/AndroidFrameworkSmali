.class public Landroid/view/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final boundsInScreen:Landroid/graphics/Rect;

.field public childTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public focused:Z

.field public layer:I

.field public parentToken:Landroid/os/IBinder;

.field public token:Landroid/os/IBinder;

.field public type:I


# direct methods
.method static synthetic -wrap0(Landroid/view/WindowInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/WindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 37
    sput-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 152
    new-instance v0, Landroid/view/WindowInfo$1;

    #@b
    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    #@e
    .line 151
    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@a
    .line 48
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 140
    iput v0, p0, Landroid/view/WindowInfo;->type:I

    #@4
    .line 141
    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    #@6
    .line 142
    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@8
    .line 143
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@a
    .line 144
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    #@c
    .line 145
    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@11
    .line 146
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 147
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1a
    .line 139
    :cond_0
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    iput v1, p0, Landroid/view/WindowInfo;->type:I

    #@7
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/view/WindowInfo;->layer:I

    #@d
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@13
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@19
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-ne v1, v2, :cond_2

    #@1f
    move v1, v2

    #@20
    :goto_0
    iput-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    #@22
    .line 128
    iget-object v1, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@27
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v1

    #@2b
    if-ne v1, v2, :cond_3

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 131
    .local v0, "hasChildren":Z
    :goto_1
    if-eqz v0, :cond_1

    #@30
    .line 132
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@32
    if-nez v1, :cond_0

    #@34
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    #@36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3b
    .line 135
    :cond_0
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    #@40
    .line 122
    :cond_1
    return-void

    #@41
    .line 127
    .end local v0    # "hasChildren":Z
    :cond_2
    const/4 v1, 0x0

    #@42
    goto :goto_0

    #@43
    .line 130
    :cond_3
    const/4 v0, 0x0

    #@44
    .restart local v0    # "hasChildren":Z
    goto :goto_1
.end method

.method public static obtain()Landroid/view/WindowInfo;
    .locals 2

    #@0
    .prologue
    .line 53
    sget-object v1, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/WindowInfo;

    #@8
    .line 54
    .local v0, "window":Landroid/view/WindowInfo;
    if-nez v0, :cond_0

    #@a
    .line 55
    new-instance v0, Landroid/view/WindowInfo;

    #@c
    .end local v0    # "window":Landroid/view/WindowInfo;
    invoke-direct {v0}, Landroid/view/WindowInfo;-><init>()V

    #@f
    .line 57
    .restart local v0    # "window":Landroid/view/WindowInfo;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .locals 3
    .param p0, "other"    # Landroid/view/WindowInfo;

    #@0
    .prologue
    .line 61
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    #@3
    move-result-object v0

    #@4
    .line 62
    .local v0, "window":Landroid/view/WindowInfo;
    iget v1, p0, Landroid/view/WindowInfo;->type:I

    #@6
    iput v1, v0, Landroid/view/WindowInfo;->type:I

    #@8
    .line 63
    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    #@a
    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    #@c
    .line 64
    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@e
    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@10
    .line 65
    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@12
    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@14
    .line 66
    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    #@16
    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    #@18
    .line 67
    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@1a
    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 69
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@21
    if-eqz v1, :cond_0

    #@23
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 77
    :cond_0
    :goto_0
    return-object v0

    #@2c
    .line 70
    :cond_1
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@2e
    if-nez v1, :cond_2

    #@30
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    #@32
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@34
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@37
    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@39
    goto :goto_0

    #@3a
    .line 73
    :cond_2
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3c
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3e
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@41
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    #@3
    .line 82
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WindowInfo["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 111
    const-string/jumbo v1, "type="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Landroid/view/WindowInfo;->type:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 112
    const-string/jumbo v1, ", layer="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 113
    const-string/jumbo v1, ", token="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    .line 114
    const-string/jumbo v1, ", bounds="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    .line 115
    const-string/jumbo v1, ", parent="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 116
    const-string/jumbo v1, ", focused="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    .line 117
    const-string/jumbo v1, ", children="

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    .line 118
    const/16 v1, 0x5d

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 92
    iget v0, p0, Landroid/view/WindowInfo;->type:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 93
    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 94
    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 95
    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 96
    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    move v0, v1

    #@1b
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 97
    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    .line 99
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@25
    if-eqz v0, :cond_0

    #@27
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 103
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 91
    :goto_1
    return-void

    #@33
    :cond_1
    move v0, v2

    #@34
    .line 96
    goto :goto_0

    #@35
    .line 100
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 101
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@3d
    goto :goto_1
.end method
