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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$MemoryInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public availMem:J

.field public foregroundAppThreshold:J

.field public hiddenAppThreshold:J

.field public lowMemory:Z

.field public secondaryServerThreshold:J

.field public threshold:J

.field public totalMem:J

.field public visibleAppThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2340
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo$1;-><init>()V

    #@5
    .line 2339
    sput-object v0, Landroid/app/ActivityManager$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 2272
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2350
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 2349
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 2314
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2329
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4
    move-result-wide v2

    #@5
    iput-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    #@7
    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@a
    move-result-wide v2

    #@b
    iput-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    #@d
    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v2

    #@11
    iput-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    #@13
    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    #@1c
    .line 2333
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    #@22
    .line 2334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    #@28
    .line 2335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v0

    #@2c
    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    #@2e
    .line 2336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@31
    move-result-wide v0

    #@32
    iput-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    #@34
    .line 2328
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2318
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 2319
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 2320
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 2321
    iget-boolean v0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 2322
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    .line 2323
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    #@1e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@21
    .line 2324
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@26
    .line 2325
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 2317
    return-void

    #@2c
    .line 2321
    :cond_0
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method
