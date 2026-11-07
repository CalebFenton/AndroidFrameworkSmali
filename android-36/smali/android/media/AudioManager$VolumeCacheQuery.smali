.class final Landroid/media/AudioManager$VolumeCacheQuery;
.super Ljava/lang/Record;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeCacheQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "stream",
        "queryCommand"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist queryCommand:I

.field private final blacklist stream:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/media/AudioManager$VolumeCacheQuery;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/media/AudioManager$VolumeCacheQuery;

    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iget v1, p1, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    iget p1, p1, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    if-ne v0, p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic blacklist -$$Nest$fgetqueryCommand(Landroid/media/AudioManager$VolumeCacheQuery;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    return p0
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "stream"    # I
    .param p2, "queryCommand"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "queryCommand"
        }
    .end annotation

    .line 1312
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iput p2, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/media/AudioManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager$VolumeCacheQuery;-><init>(II)V

    return-void
.end method

.method private blacklist queryVolCommandToString()Ljava/lang/String;
    .registers 2

    .line 1314
    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    packed-switch v0, :pswitch_data_12

    .line 1318
    const-string v0, "invalid command"

    goto :goto_10

    .line 1317
    :pswitch_8
    const-string v0, "getStreamVolume"

    goto :goto_10

    .line 1316
    :pswitch_b
    const-string v0, "getStreamMaxVolume"

    goto :goto_10

    .line 1315
    :pswitch_e
    const-string v0, "getStreamMinVolume"

    .line 1314
    :goto_10
    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1312
    invoke-direct {p0, p1}, Landroid/media/AudioManager$VolumeCacheQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 1312
    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iget v1, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats$$ExternalSyntheticRecord0;->m(II)I

    move-result v0

    return v0
.end method

.method public blacklist queryCommand()I
    .registers 2

    .line 1312
    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return v0
.end method

.method public blacklist stream()I
    .registers 2

    .line 1312
    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1325
    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1326
    invoke-direct {p0}, Landroid/media/AudioManager$VolumeCacheQuery;->queryVolCommandToString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1325
    const-string v1, "VolumeCacheQuery(stream=%d, queryCommand=%s)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
