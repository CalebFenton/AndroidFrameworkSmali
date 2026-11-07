.class public Landroid/app/ActivityManager$MemoryInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist advertisedMem:J

.field public whitelist availMem:J

.field public greylist foregroundAppThreshold:J

.field public greylist-max-r hiddenAppThreshold:J

.field public whitelist lowMemory:Z

.field public greylist-max-r secondaryServerThreshold:J

.field public whitelist threshold:J

.field public whitelist totalMem:J

.field public greylist-max-r visibleAppThreshold:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3482
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3439
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3493
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3494
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist copyTo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 3471
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 3472
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 3473
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 3474
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 3475
    iget-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 3476
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 3477
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 3478
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 3479
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 3480
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3442
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3458
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 3459
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 3460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 3461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 3462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iput-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 3463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 3464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 3465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 3466
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 3467
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3446
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3447
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3448
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3449
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3450
    iget-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3451
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3452
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3453
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3454
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3455
    return-void
.end method
