.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$Builder;,
        Landroid/media/VolumeShaper$Operation$Flag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final greylist-max-o FLAG_DEFER:I = 0x8

.field private static final greylist-max-o FLAG_JOIN:I = 0x4

.field private static final greylist-max-o FLAG_NONE:I = 0x0

.field private static final greylist-max-o FLAG_PUBLIC_ALL:I = 0x3

.field private static final greylist-max-o FLAG_REVERSE:I = 0x1

.field private static final greylist-max-o FLAG_TERMINATE:I = 0x2

.field public static final whitelist PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final whitelist REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final greylist-max-r mFlags:I

.field private final greylist-max-r mReplaceId:I

.field private final greylist-max-r mXOffset:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/media/VolumeShaper$Operation;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReplaceId(Landroid/media/VolumeShaper$Operation;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXOffset(Landroid/media/VolumeShaper$Operation;)F
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1163
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 1165
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 1172
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 1174
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 1293
    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(IIF)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "replaceId"    # I
    .param p3, "xOffset"    # F

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 1349
    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 1350
    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1351
    return-void
.end method

.method synthetic constructor blacklist <init>(IIFLandroid/media/VolumeShaper-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method

.method private static blacklist flagsFromAidl(I)I
    .registers 3
    .param p0, "aidl"    # I

    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 1309
    or-int/lit8 v0, v0, 0x1

    .line 1311
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 1312
    or-int/lit8 v0, v0, 0x2

    .line 1314
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 1315
    or-int/lit8 v0, v0, 0x4

    .line 1317
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 1318
    or-int/lit8 v0, v0, 0x8

    .line 1320
    :cond_19
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1f

    .line 1321
    or-int/lit8 v0, v0, 0x10

    .line 1323
    :cond_1f
    return v0
.end method

.method private static blacklist flagsToAidl(I)I
    .registers 3
    .param p0, "flags"    # I

    .line 1327
    const/4 v0, 0x0

    .line 1328
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    .line 1329
    or-int/lit8 v0, v0, 0x1

    .line 1331
    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    .line 1332
    or-int/lit8 v0, v0, 0x2

    .line 1334
    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    .line 1335
    or-int/lit8 v0, v0, 0x4

    .line 1337
    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    .line 1338
    or-int/lit8 v0, v0, 0x8

    .line 1340
    :cond_19
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1f

    .line 1341
    or-int/lit8 v0, v0, 0x10

    .line 1343
    :cond_1f
    return v0
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;
    .registers 5
    .param p0, "parcelable"    # Landroid/media/VolumeShaperOperation;

    .line 1287
    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaperOperation;->flags:I

    .line 1288
    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsFromAidl(I)I

    move-result v1

    iget v2, p0, Landroid/media/VolumeShaperOperation;->replaceId:I

    iget v3, p0, Landroid/media/VolumeShaperOperation;->xOffset:F

    invoke-direct {v0, v1, v2, v3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    .line 1287
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1257
    instance-of v0, p1, Landroid/media/VolumeShaper$Operation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1258
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 1259
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$Operation;

    .line 1261
    .local v2, "other":Landroid/media/VolumeShaper$Operation;
    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v3, v4, :cond_25

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v3, v4, :cond_25

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1263
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_25

    move v1, v0

    goto :goto_26

    :cond_25
    nop

    .line 1261
    :goto_26
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1252
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperOperation;
    .registers 3

    .line 1278
    new-instance v0, Landroid/media/VolumeShaperOperation;

    invoke-direct {v0}, Landroid/media/VolumeShaperOperation;-><init>()V

    .line 1279
    .local v0, "result":Landroid/media/VolumeShaperOperation;
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperOperation;->flags:I

    .line 1280
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput v1, v0, Landroid/media/VolumeShaperOperation;->replaceId:I

    .line 1281
    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iput v1, v0, Landroid/media/VolumeShaperOperation;->xOffset:F

    .line 1282
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 1244
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReplaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1273
    invoke-virtual {p0}, Landroid/media/VolumeShaper$Operation;->toParcelable()Landroid/media/VolumeShaperOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaperOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1274
    return-void
.end method
