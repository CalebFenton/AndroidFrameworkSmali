.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist KEY_USE_MICROPHONE:Ljava/lang/String; = "use_microphone"

.field private static final blacklist KEY_USE_SPEAKER:Ljava/lang/String; = "use_speaker"


# instance fields
.field private final blacklist useMicrophone:Z

.field private final blacklist useSpeaker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoPersistableBundle(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/os/PersistableBundle;
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfrom(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
    .registers 1

    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(ZZ)V
    .registers 3
    .param p1, "useMicrophone"    # Z
    .param p2, "useSpeaker"    # Z

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useMicrophone:Z

    .line 691
    iput-boolean p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useSpeaker:Z

    .line 692
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/system/virtualmachine/VirtualMachineCustomImageConfig-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;-><init>(ZZ)V

    return-void
.end method

.method private static blacklist from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;
    .registers 3
    .param p0, "pb"    # Landroid/os/PersistableBundle;

    .line 714
    if-nez p0, :cond_4

    .line 715
    const/4 v0, 0x0

    return-object v0

    .line 717
    :cond_4
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;-><init>()V

    .line 718
    .local v0, "builder":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;
    const-string v1, "use_microphone"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->setUseMicrophone(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;

    .line 719
    const-string v1, "use_speaker"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->setUseSpeaker(Z)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;

    .line 720
    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    move-result-object v1

    return-object v1
.end method

.method private blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 724
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 725
    .local v0, "pb":Landroid/os/PersistableBundle;
    const-string v1, "use_microphone"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useMicrophone:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    const-string v1, "use_speaker"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useSpeaker:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 727
    return-object v0
.end method


# virtual methods
.method blacklist toParcelable()Landroid/system/virtualizationservice/AudioConfig;
    .registers 3

    .line 705
    new-instance v0, Landroid/system/virtualizationservice/AudioConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/AudioConfig;-><init>()V

    .line 707
    .local v0, "parcelable":Landroid/system/virtualizationservice/AudioConfig;
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useSpeaker:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/AudioConfig;->useSpeaker:Z

    .line 708
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useMicrophone:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/AudioConfig;->useMicrophone:Z

    .line 710
    return-object v0
.end method

.method public blacklist useMicrophone()Z
    .registers 2

    .line 696
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useMicrophone:Z

    return v0
.end method

.method public blacklist useSpeaker()Z
    .registers 2

    .line 701
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->useSpeaker:Z

    return v0
.end method
