.class Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;
.super Ljava/lang/Object;
.source "Linker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LibInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_LINKER_LIB_INFO:Ljava/lang/String; = "libinfo"


# instance fields
.field public blacklist mLibFilePath:Ljava/lang/String;

.field public blacklist mLoadAddress:J

.field public blacklist mLoadSize:J

.field public blacklist mRelroFd:I

.field public blacklist mRelroSize:J

.field public blacklist mRelroStart:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 711
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 643
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLibFilePath:Ljava/lang/String;

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 654
    .local v1, "hasRelroFd":Z
    :goto_2d
    if-eqz v1, :cond_40

    .line 655
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 658
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3f

    .line 659
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2

    iput v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 661
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3f
    goto :goto_42

    .line 662
    :cond_40
    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 664
    :goto_42
    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 674
    const-class v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 675
    const-string v0, "libinfo"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    return-object v0
.end method


# virtual methods
.method public blacklist close()V
    .registers 2

    .line 667
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-ltz v0, :cond_10

    .line 668
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 671
    :cond_10
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 3

    .line 679
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "libinfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 681
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 686
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLibFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 688
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 689
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 693
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    const/4 v1, 0x0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-ltz v0, :cond_3d

    .line 696
    :try_start_28
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 697
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0, p1, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 698
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_35

    .line 701
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_3d

    .line 699
    :catch_35
    move-exception v0

    .line 700
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Linker"

    const-string v2, "Can\'t write LibInfo file descriptor to parcel"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3d
    :goto_3d
    return-void
.end method
