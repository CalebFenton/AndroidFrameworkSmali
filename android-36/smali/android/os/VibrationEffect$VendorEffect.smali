.class public final Landroid/os/VibrationEffect$VendorEffect;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorEffect"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$VendorEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_SCALE:F = 1.0f

.field public static final blacklist DEFAULT_STRENGTH:I = 0x1


# instance fields
.field private final blacklist mAdaptiveScale:F

.field private final blacklist mEffectStrength:I

.field private final blacklist mScale:F

.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1394
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$VendorEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$VendorEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1172
    const-class v0, Landroid/os/VibrationEffect;

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1172
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1172
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1175
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;IFF)V
    .registers 5
    .param p1, "vendorData"    # Landroid/os/PersistableBundle;
    .param p2, "effectStrength"    # I
    .param p3, "scale"    # F
    .param p4, "adaptiveScale"    # F

    .line 1179
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 1180
    iput-object p1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1181
    iput p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    .line 1182
    iput p3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1183
    iput p4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    .line 1184
    return-void
.end method

.method private static blacklist isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 8
    .param p0, "first"    # Landroid/os/PersistableBundle;
    .param p1, "second"    # Landroid/os/PersistableBundle;

    .line 1349
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1350
    return v0

    .line 1352
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    goto :goto_39

    .line 1355
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1356
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 1357
    return v1

    .line 1359
    .end local v3    # "key":Ljava/lang/String;
    :cond_37
    goto :goto_1c

    .line 1360
    :cond_38
    return v0

    .line 1353
    :cond_39
    :goto_39
    return v1
.end method

.method private static blacklist isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "first"    # Ljava/lang/Object;
    .param p1, "second"    # Ljava/lang/Object;

    .line 1370
    if-ne p0, p1, :cond_4

    .line 1371
    const/4 v0, 0x1

    return v0

    .line 1372
    :cond_4
    if-eqz p0, :cond_76

    if-eqz p1, :cond_76

    .line 1373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_76

    .line 1375
    :cond_17
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_26

    .line 1376
    move-object v0, p0

    check-cast v0, Landroid/os/PersistableBundle;

    move-object v1, p1

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-static {v0, v1}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0

    .line 1378
    :cond_26
    instance-of v0, p0, [I

    if-eqz v0, :cond_35

    .line 1379
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 1380
    :cond_35
    instance-of v0, p0, [J

    if-eqz v0, :cond_44

    .line 1381
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 1382
    :cond_44
    instance-of v0, p0, [D

    if-eqz v0, :cond_53

    .line 1383
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 1384
    :cond_53
    instance-of v0, p0, [Z

    if-eqz v0, :cond_62

    .line 1385
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 1386
    :cond_62
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 1387
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1389
    :cond_71
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1374
    :cond_76
    :goto_76
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
    .registers 6
    .param p1, "scaleFactor"    # F

    .line 1278
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    .line 1279
    return-object p0

    .line 1281
    :cond_9
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1283
    .local v0, "updated":Landroid/os/VibrationEffect$VendorEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1284
    return-object v0
.end method

.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 6
    .param p1, "effectStrength"    # I

    .line 1252
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v0, p1, :cond_5

    .line 1253
    return-object p0

    .line 1255
    :cond_5
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1257
    .local v0, "updated":Landroid/os/VibrationEffect$VendorEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1258
    return-object v0
.end method

.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;
    .registers 3
    .param p1, "wantRepeating"    # Z
    .param p2, "loopDelayMs"    # I

    .line 1291
    return-object p0
.end method

.method public bridge synthetic blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$VendorEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 4
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 1232
    const-wide/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .registers 2

    .line 1207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "length"    # I

    .line 1221
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1332
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1297
    return v0

    .line 1299
    :cond_4
    instance-of v1, p1, Landroid/os/VibrationEffect$VendorEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$VendorEffect;

    .line 1302
    .local v1, "other":Landroid/os/VibrationEffect$VendorEffect;
    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v4, v1, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v3, v4, :cond_31

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget v4, v1, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1303
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_31

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    iget v4, v1, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    .line 1304
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget-object v4, v1, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1305
    invoke-static {v3, v4}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    .line 1302
    :goto_32
    return v0

    .line 1300
    .end local v1    # "other":Landroid/os/VibrationEffect$VendorEffect;
    :cond_33
    return v2
.end method

.method public blacklist getAdaptiveScale()F
    .registers 2

    .line 1200
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 1226
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getEffectStrength()I
    .registers 2

    .line 1192
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    return v0
.end method

.method public blacklist getScale()F
    .registers 2

    .line 1196
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    return v0
.end method

.method public blacklist getVendorData()Landroid/os/PersistableBundle;
    .registers 2

    .line 1188
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1311
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$VendorEffect;
    .registers 2
    .param p1, "defaultAmplitude"    # I

    .line 1245
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->resolve(I)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$VendorEffect;
    .registers 6
    .param p1, "scaleFactor"    # F

    .line 1265
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    .line 1266
    return-object p0

    .line 1268
    :cond_9
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1270
    .local v0, "updated":Landroid/os/VibrationEffect$VendorEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1271
    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->scale(F)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 1324
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1326
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1327
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1324
    const-string/jumbo v2, "vendorEffect=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1316
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    .line 1318
    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1316
    const-string v2, "VendorEffect{vendorData=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 3

    .line 1213
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Vendor effect bundle must be non-empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1215
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1337
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 1339
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1341
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1342
    return-void
.end method
