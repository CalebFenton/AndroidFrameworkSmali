.class public Landroid/os/storage/DiskInfo;
.super Ljava/lang/Object;
.source "DiskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o ACTION_DISK_SCANNED:Ljava/lang/String; = "android.os.storage.action.DISK_SCANNED"

.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_DISK_ID:Ljava/lang/String; = "android.os.storage.extra.DISK_ID"

.field public static final greylist-max-o EXTRA_VOLUME_COUNT:Ljava/lang/String; = "android.os.storage.extra.VOLUME_COUNT"

.field public static final greylist-max-o FLAG_ADOPTABLE:I = 0x1

.field public static final greylist-max-o FLAG_DEFAULT_PRIMARY:I = 0x2

.field public static final greylist-max-o FLAG_SD:I = 0x4

.field public static final blacklist FLAG_STUB_VISIBLE:I = 0x40

.field public static final greylist-max-o FLAG_USB:I = 0x8


# instance fields
.field public final greylist flags:I

.field public final greylist-max-o id:Ljava/lang/String;

.field public greylist label:Ljava/lang/String;

.field public greylist size:J

.field public greylist-max-o sysPath:Ljava/lang/String;

.field public greylist-max-o volumeCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Landroid/os/storage/DiskInfo$1;

    invoke-direct {v0}, Landroid/os/storage/DiskInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/DiskInfo;->size:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 69
    iput p2, p0, Landroid/os/storage/DiskInfo;->flags:I

    .line 70
    return-void
.end method

.method private greylist-max-o isInteresting(Ljava/lang/String;)Z
    .registers 5
    .param p1, "label"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 89
    return v1

    .line 91
    :cond_8
    const-string v0, "ata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 92
    return v1

    .line 94
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 95
    return v1

    .line 97
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "usb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 98
    return v1

    .line 100
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "multiple"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 101
    return v1

    .line 103
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist clone()Landroid/os/storage/DiskInfo;
    .registers 3

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    sget-object v1, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-object v1

    .line 188
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiskInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/DiskInfo;->flags:I

    int-to-long v1, v1

    const-string v3, "FLAG_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 172
    iget-wide v0, p0, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 173
    const-string/jumbo v0, "label"

    iget-object v1, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 175
    const-string/jumbo v0, "sysPath"

    iget-object v1, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 176
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 178
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    instance-of v0, p1, Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_10

    .line 195
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/os/storage/DiskInfo;

    iget-object v1, v1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 197
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getDescription()Ljava/lang/String;
    .registers 4

    .line 108
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    .line 110
    iget-object v1, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/os/storage/DiskInfo;->isInteresting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 111
    iget-object v1, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040a23

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_20
    const v1, 0x1040a22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_28
    iget v1, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4c

    .line 116
    iget-object v1, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/os/storage/DiskInfo;->isInteresting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 117
    iget-object v1, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040a26

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_44
    const v1, 0x1040a25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    :cond_4c
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getId()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getShortDescription()Ljava/lang/String;
    .registers 3

    .line 127
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 129
    const v1, 0x1040a22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    :cond_12
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 131
    const v1, 0x1040a25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 133
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isAdoptable()Z
    .registers 3

    .line 139
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist isDefaultPrimary()Z
    .registers 2

    .line 144
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isSd()Z
    .registers 2

    .line 149
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isStubVisible()Z
    .registers 2

    .line 158
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist isUsb()Z
    .registers 2

    .line 154
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 163
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 164
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 226
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-wide v0, p0, Landroid/os/storage/DiskInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void
.end method
