.class public final Landroid/nearby/ScanRequest;
.super Ljava/lang/Object;
.source "ScanRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/ScanRequest$Builder;,
        Landroid/nearby/ScanRequest$ScanMode;,
        Landroid/nearby/ScanRequest$ScanType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/ScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SCAN_MODE_BALANCED:I = 0x1

.field public static final blacklist SCAN_MODE_CHRE_ONLY:I = 0x3

.field public static final whitelist SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final whitelist SCAN_MODE_LOW_POWER:I = 0x0

.field public static final whitelist SCAN_MODE_NO_POWER:I = -0x1

.field public static final whitelist SCAN_TYPE_FAST_PAIR:I = 0x1

.field public static final whitelist SCAN_TYPE_NEARBY_PRESENCE:I = 0x2


# instance fields
.field private final blacklist mBleEnabled:Z

.field private final blacklist mOffloadOnly:Z

.field private final blacklist mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanMode:I

.field private final blacklist mScanType:I

.field private final blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/nearby/ScanRequest$1;

    invoke-direct {v0}, Landroid/nearby/ScanRequest$1;-><init>()V

    sput-object v0, Landroid/nearby/ScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIZZLandroid/os/WorkSource;Ljava/util/List;)V
    .registers 7
    .param p1, "scanType"    # I
    .param p2, "scanMode"    # I
    .param p3, "bleEnabled"    # Z
    .param p4, "offloadOnly"    # Z
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Landroid/os/WorkSource;",
            "Ljava/util/List<",
            "Landroid/nearby/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p6, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/ScanFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/nearby/ScanRequest;->mScanType:I

    .line 109
    iput p2, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    .line 110
    iput-boolean p3, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    .line 111
    iput-boolean p4, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    .line 112
    iput-object p5, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 113
    iput-object p6, p0, Landroid/nearby/ScanRequest;->mScanFilters:Ljava/util/List;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZZLandroid/os/WorkSource;Ljava/util/List;Landroid/nearby/ScanRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/nearby/ScanRequest;-><init>(IIZZLandroid/os/WorkSource;Ljava/util/List;)V

    return-void
.end method

.method public static whitelist isValidScanMode(I)Z
    .registers 3
    .param p0, "scanMode"    # I

    .line 149
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_d

    if-eqz p0, :cond_d

    const/4 v0, -0x1

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public static whitelist isValidScanType(I)Z
    .registers 3
    .param p0, "scanType"    # I

    .line 141
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static whitelist scanModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "scanMode"    # I

    .line 123
    packed-switch p0, :pswitch_data_12

    .line 133
    const-string v0, "SCAN_MODE_INVALID"

    return-object v0

    .line 125
    :pswitch_6
    const-string v0, "SCAN_MODE_LOW_LATENCY"

    return-object v0

    .line 127
    :pswitch_9
    const-string v0, "SCAN_MODE_BALANCED"

    return-object v0

    .line 129
    :pswitch_c
    const-string v0, "SCAN_MODE_LOW_POWER"

    return-object v0

    .line 131
    :pswitch_f
    const-string v0, "SCAN_MODE_NO_POWER"

    return-object v0

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 248
    instance-of v0, p1, Landroid/nearby/ScanRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 249
    move-object v0, p1

    check-cast v0, Landroid/nearby/ScanRequest;

    .line 250
    .local v0, "otherRequest":Landroid/nearby/ScanRequest;
    iget v2, p0, Landroid/nearby/ScanRequest;->mScanType:I

    iget v3, v0, Landroid/nearby/ScanRequest;->mScanType:I

    if-ne v2, v3, :cond_2c

    iget v2, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    iget v3, v0, Landroid/nearby/ScanRequest;->mScanMode:I

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    iget-boolean v3, v0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    iget-boolean v3, v0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v3, v0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 254
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 250
    :goto_2d
    return v1

    .line 256
    .end local v0    # "otherRequest":Landroid/nearby/ScanRequest;
    :cond_2e
    return v1
.end method

.method public whitelist getScanFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nearby/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/nearby/ScanRequest;->mScanFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getScanMode()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    return v0
.end method

.method public whitelist getScanType()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/nearby/ScanRequest;->mScanType:I

    return v0
.end method

.method public whitelist getWorkSource()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 261
    iget v0, p0, Landroid/nearby/ScanRequest;->mScanType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBleEnabled()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    return v0
.end method

.method public whitelist isOffloadOnly()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string v2, "scanType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nearby/ScanRequest;->mScanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", scanMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    invoke-static {v2}, Landroid/nearby/ScanRequest;->scanModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_42

    .line 221
    const-string v1, ", bleEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", offloadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 224
    :cond_42
    const-string v1, ", enableBle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    :goto_4d
    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", scanFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nearby/ScanRequest;->mScanFilters:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget v0, p0, Landroid/nearby/ScanRequest;->mScanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/nearby/ScanRequest;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v0, p0, Landroid/nearby/ScanRequest;->mBleEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 237
    iget-boolean v0, p0, Landroid/nearby/ScanRequest;->mOffloadOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    iget-object v0, p0, Landroid/nearby/ScanRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 239
    iget-object v0, p0, Landroid/nearby/ScanRequest;->mScanFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 240
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    if-ge v1, v0, :cond_34

    .line 242
    iget-object v2, p0, Landroid/nearby/ScanRequest;->mScanFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nearby/ScanFilter;

    invoke-virtual {v2, p1, p2}, Landroid/nearby/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 244
    .end local v1    # "i":I
    :cond_34
    return-void
.end method
