.class public Landroid/content/pm/ServiceInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ServiceInfo$ForegroundServiceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_SHARED_ISOLATED_PROCESS:I = 0x10

.field public static final whitelist FLAG_EXTERNAL_SERVICE:I = 0x4

.field public static final whitelist FLAG_ISOLATED_PROCESS:I = 0x2

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final whitelist FLAG_STOP_WITH_TASK:I = 0x1

.field public static final blacklist FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final whitelist FLAG_USE_APP_ZYGOTE:I = 0x8

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000

.field public static final blacklist FOREGROUND_SERVICE_TYPES_MAX_INDEX:I = 0x1e

.field public static final whitelist FOREGROUND_SERVICE_TYPE_CAMERA:I = 0x40

.field public static final whitelist FOREGROUND_SERVICE_TYPE_CONNECTED_DEVICE:I = 0x10

.field public static final whitelist FOREGROUND_SERVICE_TYPE_DATA_SYNC:I = 0x1

.field public static final blacklist FOREGROUND_SERVICE_TYPE_FILE_MANAGEMENT:I = 0x1000

.field public static final whitelist FOREGROUND_SERVICE_TYPE_HEALTH:I = 0x100

.field public static final whitelist FOREGROUND_SERVICE_TYPE_LOCATION:I = 0x8

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MANIFEST:I = -0x1

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MEDIA_PLAYBACK:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MEDIA_PROCESSING:I = 0x2000

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION:I = 0x20

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MICROPHONE:I = 0x80

.field public static final whitelist FOREGROUND_SERVICE_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FOREGROUND_SERVICE_TYPE_PHONE_CALL:I = 0x4

.field public static final whitelist FOREGROUND_SERVICE_TYPE_REMOTE_MESSAGING:I = 0x200

.field public static final whitelist FOREGROUND_SERVICE_TYPE_SHORT_SERVICE:I = 0x800

.field public static final whitelist FOREGROUND_SERVICE_TYPE_SPECIAL_USE:I = 0x40000000

.field public static final whitelist FOREGROUND_SERVICE_TYPE_SYSTEM_EXEMPTED:I = 0x400


# instance fields
.field public whitelist flags:I

.field public blacklist mForegroundServiceType:I

.field public whitelist permission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 735
    new-instance v0, Landroid/content/pm/ServiceInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 642
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 643
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ServiceInfo;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/pm/ServiceInfo;

    .line 646
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 647
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 648
    iget v0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 649
    iget v0, p1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 650
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 746
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 750
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist foregroundServiceTypeToLabel(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 684
    sparse-switch p0, :sswitch_data_48

    .line 720
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 718
    :sswitch_7
    const-string/jumbo v0, "specialUse"

    return-object v0

    .line 716
    :sswitch_b
    const-string/jumbo v0, "mediaProcessing"

    return-object v0

    .line 714
    :sswitch_f
    const-string v0, "fileManagement"

    return-object v0

    .line 712
    :sswitch_12
    const-string/jumbo v0, "shortService"

    return-object v0

    .line 710
    :sswitch_16
    const-string/jumbo v0, "systemExempted"

    return-object v0

    .line 708
    :sswitch_1a
    const-string/jumbo v0, "remoteMessaging"

    return-object v0

    .line 706
    :sswitch_1e
    const-string/jumbo v0, "health"

    return-object v0

    .line 704
    :sswitch_22
    const-string/jumbo v0, "microphone"

    return-object v0

    .line 702
    :sswitch_26
    const-string v0, "camera"

    return-object v0

    .line 700
    :sswitch_29
    const-string/jumbo v0, "mediaProjection"

    return-object v0

    .line 698
    :sswitch_2d
    const-string v0, "connectedDevice"

    return-object v0

    .line 696
    :sswitch_30
    const-string/jumbo v0, "location"

    return-object v0

    .line 694
    :sswitch_34
    const-string/jumbo v0, "phoneCall"

    return-object v0

    .line 692
    :sswitch_38
    const-string/jumbo v0, "mediaPlayback"

    return-object v0

    .line 690
    :sswitch_3c
    const-string v0, "dataSync"

    return-object v0

    .line 688
    :sswitch_3f
    const-string/jumbo v0, "none"

    return-object v0

    .line 686
    :sswitch_43
    const-string/jumbo v0, "manifest"

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x1 -> :sswitch_43
        0x0 -> :sswitch_3f
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_38
        0x4 -> :sswitch_34
        0x8 -> :sswitch_30
        0x10 -> :sswitch_2d
        0x20 -> :sswitch_29
        0x40 -> :sswitch_26
        0x80 -> :sswitch_22
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_1a
        0x400 -> :sswitch_16
        0x800 -> :sswitch_12
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_b
        0x40000000 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 661
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 662
    return-void
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 666
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 669
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 670
    return-void
.end method

.method public whitelist getForegroundServiceType()I
    .registers 2

    .line 657
    iget v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 729
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 730
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 731
    iget v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    return-void
.end method
