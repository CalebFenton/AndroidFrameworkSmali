.class final Landroid/os/storage/StorageManager$VolumeListQuery;
.super Ljava/lang/Record;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VolumeListQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "mUserId",
        "mPackageName",
        "mFlags"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mUserId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/os/storage/StorageManager$VolumeListQuery;

    if-eqz v0, :cond_1e

    check-cast p1, Landroid/os/storage/StorageManager$VolumeListQuery;

    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    iget v1, p1, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    iget v1, p1, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/storage/StorageManager$VolumeListQuery;)I
    .registers 1

    iget p0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/os/storage/StorageManager$VolumeListQuery;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/os/storage/StorageManager$VolumeListQuery;)I
    .registers 1

    iget p0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    return p0
.end method

.method constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "mUserId"    # I
    .param p2, "mPackageName"    # Ljava/lang/String;
    .param p3, "mFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mUserId",
            "mPackageName",
            "mFlags"
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    iput-object p2, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    iput p3, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 315
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 315
    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    iget v1, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    iget-object v2, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist mFlags()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mFlags:I

    return v0
.end method

.method public blacklist mPackageName()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist mUserId()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/os/storage/StorageManager$VolumeListQuery;->mUserId:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 315
    invoke-direct {p0}, Landroid/os/storage/StorageManager$VolumeListQuery;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager$VolumeListQuery;

    const-string/jumbo v2, "mUserId;mPackageName;mFlags"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
