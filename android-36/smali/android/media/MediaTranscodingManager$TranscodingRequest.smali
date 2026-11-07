.class public abstract Landroid/media/MediaTranscodingManager$TranscodingRequest;
.super Ljava/lang/Object;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TranscodingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;,
        Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;,
        Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;,
        Landroid/media/MediaTranscodingManager$TranscodingRequest$TranscodingPriority;,
        Landroid/media/MediaTranscodingManager$TranscodingRequest$TranscodingType;
    }
.end annotation


# static fields
.field public static final blacklist PRIORITY_OFFLINE:I = 0x2

.field public static final blacklist PRIORITY_REALTIME:I = 0x1

.field public static final blacklist PRIORITY_UNKNOWN:I = 0x0

.field public static final blacklist TRANSCODING_TYPE_IMAGE:I = 0x2

.field public static final blacklist TRANSCODING_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist TRANSCODING_TYPE_VIDEO:I = 0x1


# instance fields
.field private blacklist mClientPid:I

.field private blacklist mClientUid:I

.field private blacklist mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mDestinationUri:Landroid/net/Uri;

.field private blacklist mImageFormat:Landroid/media/MediaFormat;

.field private blacklist mPriority:I

.field private blacklist mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private blacklist mSourceUri:Landroid/net/Uri;

.field private blacklist mTestConfig:Landroid/media/TranscodingTestConfig;

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/media/MediaTranscodingManager$TranscodingRequest;Landroid/content/Context;)Landroid/media/TranscodingRequestParcel;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest;->writeToParcel(Landroid/content/Context;)Landroid/media/TranscodingRequestParcel;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 514
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    .line 521
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientPid:I

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mType:I

    .line 527
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mPriority:I

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mImageFormat:Landroid/media/MediaFormat;

    .line 537
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mTestConfig:Landroid/media/TranscodingTestConfig;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)V
    .registers 3

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 514
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    .line 521
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientPid:I

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mType:I

    .line 527
    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mPriority:I

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mImageFormat:Landroid/media/MediaFormat;

    .line 537
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mTestConfig:Landroid/media/TranscodingTestConfig;

    .line 547
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmSourceUri(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceUri:Landroid/net/Uri;

    .line 548
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmSourceFileDescriptor(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 549
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmDestinationUri(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationUri:Landroid/net/Uri;

    .line 550
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmDestinationFileDescriptor(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 551
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmClientUid(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    .line 552
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmClientPid(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientPid:I

    .line 553
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmPriority(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mPriority:I

    .line 554
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmType(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mType:I

    .line 555
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;->-$$Nest$fgetmTestConfig(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)Landroid/media/TranscodingTestConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mTestConfig:Landroid/media/TranscodingTestConfig;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;Landroid/media/MediaTranscodingManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest;-><init>(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;)V

    return-void
.end method

.method private blacklist writeToParcel(Landroid/content/Context;)Landroid/media/TranscodingRequestParcel;
    .registers 5

    .line 629
    new-instance v0, Landroid/media/TranscodingRequestParcel;

    invoke-direct {v0}, Landroid/media/TranscodingRequestParcel;-><init>()V

    .line 630
    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mPriority:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/16 v1, 0x15

    .line 637
    iput v1, v0, Landroid/media/TranscodingRequestParcel;->priority:I

    goto :goto_12

    :cond_f
    const/4 v1, 0x0

    .line 632
    iput v1, v0, Landroid/media/TranscodingRequestParcel;->priority:I

    .line 640
    :goto_12
    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mType:I

    iput v1, v0, Landroid/media/TranscodingRequestParcel;->transcodingType:I

    .line 641
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/TranscodingRequestParcel;->sourceFilePath:Ljava/lang/String;

    .line 642
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/media/TranscodingRequestParcel;->sourceFd:Landroid/os/ParcelFileDescriptor;

    .line 643
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/TranscodingRequestParcel;->destinationFilePath:Ljava/lang/String;

    .line 644
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/media/TranscodingRequestParcel;->destinationFd:Landroid/os/ParcelFileDescriptor;

    .line 645
    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    iput v1, v0, Landroid/media/TranscodingRequestParcel;->clientUid:I

    .line 646
    iget v2, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientPid:I

    iput v2, v0, Landroid/media/TranscodingRequestParcel;->clientPid:I

    if-gez v1, :cond_3f

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/media/TranscodingRequestParcel;->clientPackageName:Ljava/lang/String;

    goto :goto_67

    .line 650
    :cond_3f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_65

    .line 654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find package for uid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaTranscodingManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string p1, "Unavailable"

    .line 657
    :cond_65
    iput-object p1, v0, Landroid/media/TranscodingRequestParcel;->clientPackageName:Ljava/lang/String;

    .line 659
    :goto_67
    invoke-virtual {p0, v0}, Landroid/media/MediaTranscodingManager$TranscodingRequest;->writeFormatToParcel(Landroid/media/TranscodingRequestParcel;)V

    .line 660
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mTestConfig:Landroid/media/TranscodingTestConfig;

    if-eqz p0, :cond_73

    const/4 p1, 0x1

    .line 661
    iput-boolean p1, v0, Landroid/media/TranscodingRequestParcel;->isForTesting:Z

    .line 662
    iput-object p0, v0, Landroid/media/TranscodingRequestParcel;->testConfig:Landroid/media/TranscodingTestConfig;

    :cond_73
    return-object v0
.end method


# virtual methods
.method public whitelist getClientPid()I
    .registers 1

    .line 589
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientPid:I

    return p0
.end method

.method public whitelist getClientUid()I
    .registers 1

    .line 584
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mClientUid:I

    return p0
.end method

.method public whitelist getDestinationFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 604
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public whitelist getDestinationUri()Landroid/net/Uri;
    .registers 1

    .line 595
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mDestinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getPriority()I
    .registers 1

    .line 613
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mPriority:I

    return p0
.end method

.method public whitelist getSourceFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 1

    .line 579
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public whitelist getSourceUri()Landroid/net/Uri;
    .registers 1

    .line 570
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mSourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getTestConfig()Landroid/media/TranscodingTestConfig;
    .registers 1

    .line 622
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mTestConfig:Landroid/media/TranscodingTestConfig;

    return-object p0
.end method

.method public blacklist getType()I
    .registers 1

    .line 564
    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest;->mType:I

    return p0
.end method

.method abstract blacklist writeFormatToParcel(Landroid/media/TranscodingRequestParcel;)V
.end method
