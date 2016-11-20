.class public Lcom/android/internal/statusbar/NotificationVisibility;
.super Ljava/lang/Object;
.source "NotificationVisibility.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/NotificationVisibility$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "NoViz"

.field private static sNexrId:I

.field private static sPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field id:I

.field public key:Ljava/lang/String;

.field public rank:I

.field public visible:Z


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    #@2
    const/16 v1, 0x19

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@9
    .line 31
    const/4 v0, 0x0

    #@a
    sput v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    #@c
    .line 148
    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility$1;

    #@e
    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility$1;-><init>()V

    #@11
    .line 147
    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@6
    .line 39
    sget v0, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    #@8
    add-int/lit8 v1, v0, 0x1

    #@a
    sput v1, Lcom/android/internal/statusbar/NotificationVisibility;->sNexrId:I

    #@c
    iput v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    #@e
    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "visibile"    # Z

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@5
    .line 45
    iput p2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@7
    .line 46
    iput-boolean p3, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@9
    .line 42
    return-void
.end method

.method private static obtain()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 2

    #@0
    .prologue
    .line 116
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v1

    #@3
    .line 117
    :try_start_0
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 118
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 121
    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility;

    #@18
    invoke-direct {v0}, Lcom/android/internal/statusbar/NotificationVisibility;-><init>()V

    #@1b
    return-object v0

    #@1c
    .line 116
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private static obtain(Landroid/os/Parcel;)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 110
    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "vo":Lcom/android/internal/statusbar/NotificationVisibility;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/NotificationVisibility;->readFromParcel(Landroid/os/Parcel;)V

    #@7
    .line 112
    return-object v0
.end method

.method public static obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "rank"    # I
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 102
    invoke-static {}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain()Lcom/android/internal/statusbar/NotificationVisibility;

    #@3
    move-result-object v0

    #@4
    .line 103
    .local v0, "vo":Lcom/android/internal/statusbar/NotificationVisibility;
    iput-object p0, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@6
    .line 104
    iput p1, v0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@8
    .line 105
    iput-boolean p2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@a
    .line 106
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@7
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@d
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@16
    .line 91
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@2
    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@4
    iget-boolean v2, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    instance-of v1, p1, Lcom/android/internal/statusbar/NotificationVisibility;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v0, p1

    #@5
    .line 73
    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    #@7
    .line 74
    .local v0, "thatViz":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@13
    iget-object v2, v0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    goto :goto_0

    #@1a
    .line 76
    .end local v0    # "thatViz":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 134
    return-void

    #@6
    .line 136
    :cond_0
    iput-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@8
    .line 137
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x19

    #@10
    if-ge v0, v1, :cond_1

    #@12
    .line 138
    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@14
    monitor-enter v1

    #@15
    .line 139
    :try_start_0
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->sPool:Ljava/util/ArrayDeque;

    #@17
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 131
    :cond_1
    return-void

    #@1c
    .line 138
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NotificationVisibility(id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 52
    const-string/jumbo v1, "key="

    #@15
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 52
    iget-object v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@1b
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 53
    const-string/jumbo v1, " rank="

    #@22
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 53
    iget v1, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@28
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@2e
    if-eqz v0, :cond_0

    #@30
    const-string/jumbo v0, " visible"

    #@33
    .line 51
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 55
    const-string/jumbo v1, " )"

    #@3a
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    return-object v0

    #@43
    .line 54
    :cond_0
    const-string/jumbo v0, ""

    #@46
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 87
    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/statusbar/NotificationVisibility;->visible:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 85
    return-void

    #@13
    .line 88
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
