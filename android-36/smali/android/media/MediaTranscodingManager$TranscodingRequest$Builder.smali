.class abstract Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
.super Ljava/lang/Object;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager$TranscodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mClientPid:I

.field private blacklist mClientUid:I

.field private blacklist mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mDestinationUri:Landroid/net/Uri;

.field private blacklist mPriority:I

.field private blacklist mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mSourceUri:Landroid/net/Uri;

.field private blacklist mTestConfig:Landroid/media/TranscodingTestConfig;

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPid(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientPid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientUid(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestinationFileDescriptor(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestinationUri(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mDestinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceFileDescriptor(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceUri(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mSourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTestConfig(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/media/TranscodingTestConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mTestConfig:Landroid/media/TranscodingTestConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mType:I

    return p0
.end method

.method private constructor blacklist <init>(ILandroid/net/Uri;Landroid/net/Uri;)V
    .registers 5

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 675
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 676
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, -0x1

    .line 677
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientUid:I

    .line 678
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientPid:I

    const/4 v0, 0x0

    .line 680
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mPriority:I

    .line 701
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mType:I

    if-eqz p2, :cond_31

    .line 703
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 707
    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mSourceUri:Landroid/net/Uri;

    if-eqz p3, :cond_29

    .line 709
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 713
    iput-object p3, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mDestinationUri:Landroid/net/Uri;

    return-void

    .line 710
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify a non-empty destination Uri."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 704
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify a non-empty source Uri."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/Uri;Landroid/net/Uri;Landroid/media/MediaTranscodingManager-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;-><init>(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method abstract blacklist self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public blacklist setClientPid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_9

    .line 796
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientPid:I

    .line 797
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0

    .line 794
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid pid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setClientUid(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_9

    .line 776
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mClientUid:I

    .line 777
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0

    .line 774
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Uid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDestinationFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 752
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    if-ltz v0, :cond_f

    .line 756
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 757
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0

    .line 753
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid destination descriptor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setPriority(I)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_1e

    .line 811
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 813
    :cond_1e
    :goto_1e
    iput p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mPriority:I

    .line 814
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setSourceFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 729
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    if-ltz v0, :cond_f

    .line 733
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 734
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0

    .line 730
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid source descriptor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setTestConfig(Landroid/media/TranscodingTestConfig;)Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/TranscodingTestConfig;",
            ")TT;"
        }
    .end annotation

    .line 826
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->mTestConfig:Landroid/media/TranscodingTestConfig;

    .line 827
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->self()Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;

    move-result-object p0

    return-object p0
.end method
