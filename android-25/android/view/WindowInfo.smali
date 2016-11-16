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
.field public accessibilityIdOfAnchor:I

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

.field public title:Ljava/lang/CharSequence;

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
    .line 162
    new-instance v0, Landroid/view/WindowInfo$1;

    #@b
    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    #@e
    .line 161
    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
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
    const/4 v0, -0x1

    #@b
    iput v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@d
    .line 50
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
    .line 150
    iput v0, p0, Landroid/view/WindowInfo;->type:I

    #@4
    .line 151
    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    #@6
    .line 152
    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@8
    .line 153
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@a
    .line 154
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    #@c
    .line 155
    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@11
    .line 156
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 157
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1a
    .line 149
    :cond_0
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    iput v1, p0, Landroid/view/WindowInfo;->type:I

    #@8
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    iput v1, p0, Landroid/view/WindowInfo;->layer:I

    #@e
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@14
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@1a
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    if-ne v1, v2, :cond_2

    #@20
    move v1, v2

    #@21
    :goto_0
    iput-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    #@23
    .line 136
    iget-object v1, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    #@28
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@2e
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@34
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v1

    #@38
    if-ne v1, v2, :cond_3

    #@3a
    move v0, v2

    #@3b
    .line 141
    .local v0, "hasChildren":Z
    :goto_1
    if-eqz v0, :cond_1

    #@3d
    .line 142
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3f
    if-nez v1, :cond_0

    #@41
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    #@43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@46
    iput-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@48
    .line 145
    :cond_0
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@4a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    #@4d
    .line 130
    :cond_1
    return-void

    #@4e
    .end local v0    # "hasChildren":Z
    :cond_2
    move v1, v3

    #@4f
    .line 135
    goto :goto_0

    #@50
    :cond_3
    move v0, v3

    #@51
    .line 140
    goto :goto_1
.end method

.method public static obtain()Landroid/view/WindowInfo;
    .locals 2

    #@0
    .prologue
    .line 55
    sget-object v1, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/WindowInfo;

    #@8
    .line 56
    .local v0, "window":Landroid/view/WindowInfo;
    if-nez v0, :cond_0

    #@a
    .line 57
    new-instance v0, Landroid/view/WindowInfo;

    #@c
    .end local v0    # "window":Landroid/view/WindowInfo;
    invoke-direct {v0}, Landroid/view/WindowInfo;-><init>()V

    #@f
    .line 59
    .restart local v0    # "window":Landroid/view/WindowInfo;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .locals 3
    .param p0, "other"    # Landroid/view/WindowInfo;

    #@0
    .prologue
    .line 63
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    #@3
    move-result-object v0

    #@4
    .line 64
    .local v0, "window":Landroid/view/WindowInfo;
    iget v1, p0, Landroid/view/WindowInfo;->type:I

    #@6
    iput v1, v0, Landroid/view/WindowInfo;->type:I

    #@8
    .line 65
    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    #@a
    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    #@c
    .line 66
    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@e
    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@10
    .line 67
    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@12
    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@14
    .line 68
    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    #@16
    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    #@18
    .line 69
    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@1a
    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 70
    iget-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@21
    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@23
    .line 71
    iget v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@25
    iput v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@27
    .line 73
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@29
    if-eqz v1, :cond_0

    #@2b
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@2d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 81
    :cond_0
    :goto_0
    return-object v0

    #@34
    .line 74
    :cond_1
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@36
    if-nez v1, :cond_2

    #@38
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    #@3a
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@3c
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3f
    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@41
    goto :goto_0

    #@42
    .line 77
    :cond_2
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@44
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@46
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@49
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    #@3
    .line 86
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 116
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WindowInfo["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 117
    const-string/jumbo v1, "title="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@17
    .line 118
    const-string/jumbo v1, ", type="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/view/WindowInfo;->type:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 119
    const-string/jumbo v1, ", layer="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 120
    const-string/jumbo v1, ", token="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    .line 121
    const-string/jumbo v1, ", bounds="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 122
    const-string/jumbo v1, ", parent="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    .line 123
    const-string/jumbo v1, ", focused="

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    .line 124
    const-string/jumbo v1, ", children="

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    .line 125
    const-string/jumbo v1, ", accessibility anchor="

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget v2, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    .line 126
    const/16 v1, 0x5d

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
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
    .line 96
    iget v0, p0, Landroid/view/WindowInfo;->type:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 97
    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 98
    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 99
    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@16
    .line 100
    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    move v0, v1

    #@1b
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 101
    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@23
    .line 102
    iget-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@28
    .line 103
    iget v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 105
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@2f
    if-eqz v0, :cond_0

    #@31
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 109
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 95
    :goto_1
    return-void

    #@3d
    :cond_1
    move v0, v2

    #@3e
    .line 100
    goto :goto_0

    #@3f
    .line 106
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 107
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@47
    goto :goto_1
.end method
