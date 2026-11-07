.class public final Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;
.super Ljava/lang/Object;
.source "VirtualMachineCustomImageConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedPath"
.end annotation


# instance fields
.field private final blacklist appDomain:Z

.field private final blacklist guestGid:I

.field private final blacklist guestUid:I

.field private final blacklist hostGid:I

.field private final blacklist hostUid:I

.field private final blacklist mask:I

.field private final blacklist path:Ljava/lang/String;

.field private final blacklist socket:Ljava/lang/String;

.field private final blacklist socketPath:Ljava/lang/String;

.field private final blacklist tag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "hostUid"    # I
    .param p3, "hostGid"    # I
    .param p4, "guestUid"    # I
    .param p5, "guestGid"    # I
    .param p6, "mask"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "socket"    # Ljava/lang/String;
    .param p9, "appDomain"    # Z
    .param p10, "socketPath"    # Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->path:Ljava/lang/String;

    .line 335
    iput p2, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostUid:I

    .line 336
    iput p3, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostGid:I

    .line 337
    iput p4, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestUid:I

    .line 338
    iput p5, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestGid:I

    .line 339
    iput p6, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->mask:I

    .line 340
    iput-object p7, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->tag:Ljava/lang/String;

    .line 341
    iput-object p8, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->socket:Ljava/lang/String;

    .line 342
    iput-boolean p9, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->appDomain:Z

    .line 343
    iput-object p10, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->socketPath:Ljava/lang/String;

    .line 344
    return-void
.end method


# virtual methods
.method public blacklist getAppDomain()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->appDomain:Z

    return v0
.end method

.method public blacklist getGuestGid()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestGid:I

    return v0
.end method

.method public blacklist getGuestUid()I
    .registers 2

    .line 378
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestUid:I

    return v0
.end method

.method public blacklist getHostGid()I
    .registers 2

    .line 373
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostGid:I

    return v0
.end method

.method public blacklist getHostUid()I
    .registers 2

    .line 368
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostUid:I

    return v0
.end method

.method public blacklist getMask()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->mask:I

    return v0
.end method

.method public blacklist getSharedPath()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSocket()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->socket:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSocketPath()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->socketPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->tag:Ljava/lang/String;

    return-object v0
.end method

.method blacklist toParcelable()Landroid/system/virtualizationservice/SharedPath;
    .registers 3

    .line 347
    new-instance v0, Landroid/system/virtualizationservice/SharedPath;

    invoke-direct {v0}, Landroid/system/virtualizationservice/SharedPath;-><init>()V

    .line 349
    .local v0, "parcelable":Landroid/system/virtualizationservice/SharedPath;
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->path:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/SharedPath;->sharedPath:Ljava/lang/String;

    .line 350
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostUid:I

    iput v1, v0, Landroid/system/virtualizationservice/SharedPath;->hostUid:I

    .line 351
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->hostGid:I

    iput v1, v0, Landroid/system/virtualizationservice/SharedPath;->hostGid:I

    .line 352
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestUid:I

    iput v1, v0, Landroid/system/virtualizationservice/SharedPath;->guestUid:I

    .line 353
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->guestGid:I

    iput v1, v0, Landroid/system/virtualizationservice/SharedPath;->guestGid:I

    .line 354
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->mask:I

    iput v1, v0, Landroid/system/virtualizationservice/SharedPath;->mask:I

    .line 355
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->tag:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/SharedPath;->tag:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->socket:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/virtualizationservice/SharedPath;->socketPath:Ljava/lang/String;

    .line 357
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->appDomain:Z

    iput-boolean v1, v0, Landroid/system/virtualizationservice/SharedPath;->appDomain:Z

    .line 358
    return-object v0
.end method
