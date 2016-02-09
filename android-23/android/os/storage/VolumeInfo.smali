.class public Landroid/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/VolumeInfo$1;,
        Landroid/os/storage/VolumeInfo$2;
    }
.end annotation


# static fields
.field public static final ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final DOCUMENT_ROOT_PRIMARY_EMULATED:Ljava/lang/String; = "primary"

.field public static final EXTRA_VOLUME_ID:Ljava/lang/String; = "android.os.storage.extra.VOLUME_ID"

.field public static final EXTRA_VOLUME_STATE:Ljava/lang/String; = "android.os.storage.extra.VOLUME_STATE"

.field public static final ID_EMULATED_INTERNAL:Ljava/lang/String; = "emulated"

.field public static final ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final MOUNT_FLAG_VISIBLE:I = 0x2

.field public static final STATE_BAD_REMOVAL:I = 0x8

.field public static final STATE_CHECKING:I = 0x1

.field public static final STATE_EJECTING:I = 0x5

.field public static final STATE_FORMATTING:I = 0x4

.field public static final STATE_MOUNTED:I = 0x2

.field public static final STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final STATE_REMOVED:I = 0x7

.field public static final STATE_UNMOUNTABLE:I = 0x6

.field public static final STATE_UNMOUNTED:I = 0x0

.field public static final TYPE_ASEC:I = 0x3

.field public static final TYPE_EMULATED:I = 0x2

.field public static final TYPE_OBB:I = 0x4

.field public static final TYPE_PRIVATE:I = 0x1

.field public static final TYPE_PUBLIC:I

.field private static final sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnvironmentToBroadcast:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateToDescrip:Landroid/util/SparseIntArray;

.field private static sStateToEnvironment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final disk:Landroid/os/storage/DiskInfo;

.field public fsLabel:Ljava/lang/String;

.field public fsType:Ljava/lang/String;

.field public fsUuid:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public internalPath:Ljava/lang/String;

.field public mountFlags:I

.field public mountUserId:I

.field public final partGuid:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public state:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 97
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@c
    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    sput-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@13
    .line 99
    new-instance v0, Landroid/util/SparseIntArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@18
    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@1a
    .line 102
    new-instance v0, Landroid/os/storage/VolumeInfo$1;

    #@1c
    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$1;-><init>()V

    #@1f
    sput-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    #@21
    .line 118
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@23
    const-string/jumbo v1, "unmounted"

    #@26
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 119
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@2b
    const-string/jumbo v1, "checking"

    #@2e
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@31
    .line 120
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@33
    const-string/jumbo v1, "mounted"

    #@36
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 121
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@3b
    const-string/jumbo v1, "mounted_ro"

    #@3e
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@41
    .line 122
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@43
    const-string/jumbo v1, "unmounted"

    #@46
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@49
    .line 123
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@4b
    const-string/jumbo v1, "ejecting"

    #@4e
    const/4 v2, 0x5

    #@4f
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@52
    .line 124
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@54
    const-string/jumbo v1, "unmountable"

    #@57
    const/4 v2, 0x6

    #@58
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5b
    .line 125
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@5d
    const-string/jumbo v1, "removed"

    #@60
    const/4 v2, 0x7

    #@61
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@64
    .line 126
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@66
    const-string/jumbo v1, "bad_removal"

    #@69
    const/16 v2, 0x8

    #@6b
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6e
    .line 128
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@70
    const-string/jumbo v1, "unmounted"

    #@73
    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    #@76
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 129
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@7b
    const-string/jumbo v1, "checking"

    #@7e
    const-string/jumbo v2, "android.intent.action.MEDIA_CHECKING"

    #@81
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 130
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@86
    const-string/jumbo v1, "mounted"

    #@89
    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    #@8c
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 131
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@91
    const-string/jumbo v1, "mounted_ro"

    #@94
    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    #@97
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 132
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@9c
    const-string/jumbo v1, "ejecting"

    #@9f
    const-string/jumbo v2, "android.intent.action.MEDIA_EJECT"

    #@a2
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    .line 133
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@a7
    const-string/jumbo v1, "unmountable"

    #@aa
    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    #@ad
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    .line 134
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@b2
    const-string/jumbo v1, "removed"

    #@b5
    const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"

    #@b8
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    .line 135
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@bd
    const-string/jumbo v1, "bad_removal"

    #@c0
    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    #@c3
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    .line 137
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@c8
    const v1, 0x1040404

    #@cb
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@ce
    .line 138
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@d0
    const v1, 0x1040405

    #@d3
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@d6
    .line 139
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@d8
    const v1, 0x1040406

    #@db
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@de
    .line 140
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@e0
    const v1, 0x1040407

    #@e3
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@e6
    .line 141
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@e8
    const v1, 0x104040c

    #@eb
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@ee
    .line 142
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@f0
    const/4 v1, 0x5

    #@f1
    const v2, 0x104040b

    #@f4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@f7
    .line 143
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@f9
    const/4 v1, 0x6

    #@fa
    const v2, 0x1040409

    #@fd
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@100
    .line 144
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@102
    const/4 v1, 0x7

    #@103
    const v2, 0x1040403

    #@106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@109
    .line 145
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@10b
    const/16 v1, 0x8

    #@10d
    const v2, 0x1040408

    #@110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@113
    .line 495
    new-instance v0, Landroid/os/storage/VolumeInfo$2;

    #@115
    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$2;-><init>()V

    #@118
    sput-object v0, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11a
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 153
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@6
    .line 154
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@9
    .line 155
    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@b
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@11
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@17
    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 173
    sget-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/storage/DiskInfo;

    #@25
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@27
    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@2d
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@33
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@39
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@3f
    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    #@45
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@4b
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@51
    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@57
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@5d
    .line 169
    return-void

    #@5e
    .line 175
    :cond_0
    const/4 v0, 0x0

    #@5f
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@61
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "disk"    # Landroid/os/storage/DiskInfo;
    .param p4, "partGuid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 153
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@6
    .line 154
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@9
    .line 155
    iput v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@b
    .line 163
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@13
    .line 164
    iput p2, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@15
    .line 165
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@17
    .line 166
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@19
    .line 162
    return-void
.end method

.method public static buildStableMtpStorageId(Ljava/lang/String;)I
    .locals 5
    .param p0, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/high16 v4, -0x10000

    #@3
    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 401
    return v3

    #@a
    .line 403
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 404
    .local v0, "hash":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    if-ge v1, v2, :cond_1

    #@12
    .line 405
    mul-int/lit8 v2, v0, 0x1f

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v3

    #@18
    add-int v0, v2, v3

    #@1a
    .line 404
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 407
    :cond_1
    shl-int/lit8 v2, v0, 0x10

    #@1f
    xor-int/2addr v2, v0

    #@20
    and-int v0, v2, v4

    #@22
    .line 410
    if-nez v0, :cond_2

    #@24
    const/high16 v0, 0x20000

    #@26
    .line 411
    :cond_2
    const/high16 v2, 0x10000

    #@28
    if-ne v0, v2, :cond_3

    #@2a
    const/high16 v0, 0x20000

    #@2c
    .line 412
    :cond_3
    if-ne v0, v4, :cond_4

    #@2e
    const/high16 v0, -0x20000

    #@30
    .line 413
    :cond_4
    or-int/lit8 v2, v0, 0x1

    #@32
    return v2
.end method

.method public static getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "envState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public static getBroadcastForState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 202
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    sget-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method public static getEnvironmentForState(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 189
    sget-object v1, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 190
    .local v0, "envState":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 191
    return-object v0

    #@b
    .line 193
    :cond_0
    const-string/jumbo v1, "unknown"

    #@e
    return-object v1
.end method


# virtual methods
.method public buildBrowseIntent()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 427
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 428
    const-string/jumbo v2, "com.android.externalstorage.documents"

    #@7
    iget-object v3, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@9
    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 436
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    #@f
    const-string/jumbo v2, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    #@12
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    #@18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 438
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@1e
    .line 439
    return-object v0

    #@1f
    .line 429
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget v2, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@21
    const/4 v3, 0x2

    #@22
    if-ne v2, v3, :cond_1

    #@24
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 430
    const-string/jumbo v2, "com.android.externalstorage.documents"

    #@2d
    .line 431
    const-string/jumbo v3, "primary"

    #@30
    .line 430
    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v1

    #@34
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    #@35
    .line 433
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    #@36
    return-object v2
.end method

.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    #@0
    .prologue
    .line 330
    const-class v2, Landroid/os/storage/StorageManager;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v20

    #@8
    check-cast v20, Landroid/os/storage/StorageManager;

    #@a
    .line 334
    .local v20, "storage":Landroid/os/storage/StorageManager;
    const/16 v18, 0x0

    #@c
    .line 335
    .local v18, "allowMassStorage":Z
    if-eqz p3, :cond_5

    #@e
    .line 336
    const-string/jumbo v17, "unmounted"

    #@11
    .line 338
    .local v17, "envState":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@13
    move/from16 v1, p2

    #@15
    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    #@18
    move-result-object v5

    #@19
    .line 339
    .local v5, "userPath":Ljava/io/File;
    if-nez v5, :cond_0

    #@1b
    .line 340
    new-instance v5, Ljava/io/File;

    #@1d
    .end local v5    # "userPath":Ljava/io/File;
    const-string/jumbo v2, "/dev/null"

    #@20
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@23
    .line 343
    .restart local v5    # "userPath":Ljava/io/File;
    :cond_0
    const/4 v6, 0x0

    #@24
    .line 344
    .local v6, "description":Ljava/lang/String;
    const-wide/16 v10, 0x0

    #@26
    .line 345
    .local v10, "mtpReserveSize":J
    const-wide/16 v13, 0x0

    #@28
    .line 346
    .local v13, "maxFileSize":J
    const/4 v4, 0x0

    #@29
    .line 348
    .local v4, "mtpStorageId":I
    move-object/from16 v0, p0

    #@2b
    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    #@2d
    const/4 v3, 0x2

    #@2e
    if-ne v2, v3, :cond_7

    #@30
    .line 349
    const/4 v9, 0x1

    #@31
    .line 351
    .local v9, "emulated":Z
    invoke-virtual/range {v20 .. v21}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    #@34
    move-result-object v19

    #@35
    .line 352
    .local v19, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v19, :cond_1

    #@37
    .line 353
    move-object/from16 v0, v20

    #@39
    move-object/from16 v1, v19

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 356
    .end local v6    # "description":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 357
    const v4, 0x10001

    #@48
    .line 360
    :cond_2
    move-object/from16 v0, v20

    #@4a
    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    #@4d
    move-result-wide v10

    #@4e
    .line 362
    const-string/jumbo v2, "emulated"

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_6

    #@5b
    .line 363
    const/4 v8, 0x0

    #@5c
    .line 390
    .end local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v8, "removable":Z
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    #@5e
    .line 391
    const v2, 0x104000e

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    .line 394
    :cond_4
    new-instance v2, Landroid/os/storage/StorageVolume;

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@6d
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@70
    move-result v7

    #@71
    .line 395
    new-instance v15, Landroid/os/UserHandle;

    #@73
    move/from16 v0, p2

    #@75
    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@78
    .line 396
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@7c
    move-object/from16 v16, v0

    #@7e
    .line 395
    const/4 v12, 0x0

    #@7f
    .line 394
    invoke-direct/range {v2 .. v17}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    #@82
    return-object v2

    #@83
    .line 336
    .end local v4    # "mtpStorageId":I
    .end local v5    # "userPath":Ljava/io/File;
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v10    # "mtpReserveSize":J
    .end local v13    # "maxFileSize":J
    .end local v17    # "envState":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@85
    iget v2, v0, Landroid/os/storage/VolumeInfo;->state:I

    #@87
    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@8a
    move-result-object v17

    #@8b
    .restart local v17    # "envState":Ljava/lang/String;
    goto :goto_0

    #@8c
    .line 365
    .restart local v4    # "mtpStorageId":I
    .restart local v5    # "userPath":Ljava/io/File;
    .restart local v9    # "emulated":Z
    .restart local v10    # "mtpReserveSize":J
    .restart local v13    # "maxFileSize":J
    .restart local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_6
    const/4 v8, 0x1

    #@8d
    .restart local v8    # "removable":Z
    goto :goto_1

    #@8e
    .line 368
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v19    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v6    # "description":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@90
    iget v2, v0, Landroid/os/storage/VolumeInfo;->type:I

    #@92
    if-nez v2, :cond_9

    #@94
    .line 369
    const/4 v9, 0x0

    #@95
    .line 370
    .restart local v9    # "emulated":Z
    const/4 v8, 0x1

    #@96
    .line 372
    .restart local v8    # "removable":Z
    invoke-virtual/range {v20 .. v21}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    .line 374
    .local v6, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@9d
    move-result v2

    #@9e
    if-eqz v2, :cond_8

    #@a0
    .line 375
    const v4, 0x10001

    #@a3
    .line 382
    :goto_2
    const-string/jumbo v2, "vfat"

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_3

    #@b0
    .line 383
    const-wide v13, 0xffffffffL

    #@b5
    goto :goto_1

    #@b6
    .line 379
    :cond_8
    move-object/from16 v0, p0

    #@b8
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@ba
    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->buildStableMtpStorageId(Ljava/lang/String;)I

    #@bd
    move-result v4

    #@be
    goto :goto_2

    #@bf
    .line 387
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .local v6, "description":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c1
    new-instance v3, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v7, "Unexpected volume type "

    #@c9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget v7, v0, Landroid/os/storage/VolumeInfo;->type:I

    #@d1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v3

    #@d9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@dc
    throw v2
.end method

.method public clone()Landroid/os/storage/VolumeInfo;
    .locals 2

    #@0
    .prologue
    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 473
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 474
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 475
    sget-object v1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@17
    .line 475
    return-object v1

    #@18
    .line 476
    :catchall_0
    move-exception v1

    #@19
    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 476
    throw v1
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
    .line 470
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 509
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VolumeInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 451
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 452
    const-string/jumbo v0, "type"

    #@26
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "TYPE_"

    #@2d
    iget v3, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@2f
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    .line 453
    const-string/jumbo v0, "diskId"

    #@39
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@40
    .line 454
    const-string/jumbo v0, "partGuid"

    #@43
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@48
    .line 455
    const-string/jumbo v0, "mountFlags"

    #@4b
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, "MOUNT_FLAG_"

    #@52
    iget v3, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@54
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@5b
    .line 456
    const-string/jumbo v0, "mountUserId"

    #@5e
    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@67
    .line 457
    const-string/jumbo v0, "state"

    #@6a
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getClass()Ljava/lang/Class;

    #@6d
    move-result-object v1

    #@6e
    const-string/jumbo v2, "STATE_"

    #@71
    iget v3, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@73
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@7a
    .line 458
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@7d
    .line 459
    const-string/jumbo v0, "fsType"

    #@80
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    #@82
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@85
    .line 460
    const-string/jumbo v0, "fsUuid"

    #@88
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@8a
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@8d
    .line 461
    const-string/jumbo v0, "fsLabel"

    #@90
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@92
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@95
    .line 462
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@98
    .line 463
    const-string/jumbo v0, "path"

    #@9b
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@9d
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@a0
    .line 464
    const-string/jumbo v0, "internalPath"

    #@a3
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@a5
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@a8
    .line 465
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@ab
    .line 466
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@ae
    .line 449
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 483
    instance-of v0, p1, Landroid/os/storage/VolumeInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 484
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@6
    check-cast p1, Landroid/os/storage/VolumeInfo;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 486
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 242
    const-string/jumbo v0, "private"

    #@3
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    const-string/jumbo v0, "emulated"

    #@e
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 243
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@19
    move-result-object v0

    #@1a
    const v1, 0x1040480

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 244
    :cond_1
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 245
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@2c
    return-object v0

    #@2d
    .line 247
    :cond_2
    const/4 v0, 0x0

    #@2e
    return-object v0
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@2
    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 218
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@7
    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 301
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v0, Ljava/io/File;

    #@7
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    :cond_0
    return-object v0
.end method

.method public getInternalPathForUser(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 323
    new-instance v0, Ljava/io/File;

    #@6
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@8
    const-string/jumbo v2, "/storage/"

    #@b
    const-string/jumbo v3, "/mnt/media_rw/"

    #@e
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15
    return-object v0

    #@16
    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getMountUserId()I
    .locals 1

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@2
    return v0
.end method

.method public getPath()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v0, Ljava/io/File;

    #@7
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    :cond_0
    return-object v0
.end method

.method public getPathForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 305
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 306
    return-object v2

    #@6
    .line 307
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@8
    if-nez v0, :cond_1

    #@a
    .line 308
    new-instance v0, Ljava/io/File;

    #@c
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    return-object v0

    #@12
    .line 309
    :cond_1
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@14
    const/4 v1, 0x2

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 310
    new-instance v0, Ljava/io/File;

    #@19
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    return-object v0

    #@23
    .line 312
    :cond_2
    return-object v2
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 226
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@2
    return v0
.end method

.method public getStateDescription()I
    .locals 3

    #@0
    .prologue
    .line 230
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    #@2
    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isMountedReadable()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 252
    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@3
    const/4 v2, 0x2

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@8
    const/4 v2, 0x3

    #@9
    if-ne v1, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isMountedWritable()Z
    .locals 2

    #@0
    .prologue
    .line 256
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isPrimaryPhysical()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 264
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 268
    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isVisibleForRead(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 272
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@3
    if-nez v0, :cond_1

    #@5
    .line 273
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@d
    if-eq v0, p1, :cond_0

    #@f
    .line 275
    return v2

    #@10
    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 279
    :cond_1
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@17
    const/4 v1, 0x2

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 280
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    #@1d
    move-result v0

    #@1e
    return v0

    #@1f
    .line 282
    :cond_2
    return v2
.end method

.method public isVisibleForWrite(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 287
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@3
    if-nez v0, :cond_0

    #@5
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@7
    if-ne v0, p1, :cond_0

    #@9
    .line 288
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 289
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@10
    const/4 v1, 0x2

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 290
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 292
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 444
    new-instance v0, Ljava/io/CharArrayWriter;

    #@2
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    #@5
    .line 445
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@7
    const-string/jumbo v2, "    "

    #@a
    const/16 v3, 0x50

    #@c
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    #@f
    invoke-virtual {p0, v1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@12
    .line 446
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 515
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 516
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 517
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 518
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@14
    invoke-virtual {v0, p1, p2}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 522
    :goto_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 523
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 524
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 525
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 526
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    .line 527
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@35
    .line 528
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 529
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 530
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@44
    .line 513
    return-void

    #@45
    .line 520
    :cond_0
    const/4 v0, 0x0

    #@46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    goto :goto_0
.end method
