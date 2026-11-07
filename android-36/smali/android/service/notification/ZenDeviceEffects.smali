.class public final Landroid/service/notification/ZenDeviceEffects;
.super Ljava/lang/Object;
.source "ZenDeviceEffects.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenDeviceEffects$Builder;,
        Landroid/service/notification/ZenDeviceEffects$ModifiableField;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenDeviceEffects;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIELD_DIM_WALLPAPER:I = 0x4

.field public static final blacklist FIELD_DISABLE_AUTO_BRIGHTNESS:I = 0x10

.field public static final blacklist FIELD_DISABLE_TAP_TO_WAKE:I = 0x20

.field public static final blacklist FIELD_DISABLE_TILT_TO_WAKE:I = 0x40

.field public static final blacklist FIELD_DISABLE_TOUCH:I = 0x80

.field public static final blacklist FIELD_EXTRA_EFFECTS:I = 0x400

.field public static final blacklist FIELD_GRAYSCALE:I = 0x1

.field public static final blacklist FIELD_MAXIMIZE_DOZE:I = 0x200

.field public static final blacklist FIELD_MINIMIZE_RADIO_USAGE:I = 0x100

.field public static final blacklist FIELD_NIGHT_LIGHT:I = 0x800

.field public static final blacklist FIELD_NIGHT_MODE:I = 0x8

.field public static final blacklist FIELD_SUPPRESS_AMBIENT_DISPLAY:I = 0x2

.field private static final blacklist MAX_EFFECTS_LENGTH:I = 0x7d0


# instance fields
.field private final blacklist mDimWallpaper:Z

.field private final blacklist mDisableAutoBrightness:Z

.field private final blacklist mDisableTapToWake:Z

.field private final blacklist mDisableTiltToWake:Z

.field private final blacklist mDisableTouch:Z

.field private final blacklist mExtraEffects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGrayscale:Z

.field private final blacklist mMaximizeDoze:Z

.field private final blacklist mMinimizeRadioUsage:Z

.field private final blacklist mNightLight:Z

.field private final blacklist mNightMode:Z

.field private final blacklist mSuppressAmbientDisplay:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 387
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$1;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenDeviceEffects;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZZZZZZZLjava/util/Set;)V
    .registers 14
    .param p1, "grayscale"    # Z
    .param p2, "suppressAmbientDisplay"    # Z
    .param p3, "dimWallpaper"    # Z
    .param p4, "nightMode"    # Z
    .param p5, "disableAutoBrightness"    # Z
    .param p6, "disableTapToWake"    # Z
    .param p7, "disableTiltToWake"    # Z
    .param p8, "disableTouch"    # Z
    .param p9, "minimizeRadioUsage"    # Z
    .param p10, "maximizeDoze"    # Z
    .param p11, "nightLight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p12, "extraEffects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    .line 143
    iput-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    .line 144
    iput-boolean p3, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    .line 145
    iput-boolean p4, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    .line 146
    iput-boolean p5, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    .line 147
    iput-boolean p6, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    .line 148
    iput-boolean p7, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    .line 149
    iput-boolean p8, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    .line 150
    iput-boolean p9, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    .line 151
    iput-boolean p10, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    .line 152
    iput-boolean p11, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    .line 153
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZZZZZZZLjava/util/Set;Landroid/service/notification/ZenDeviceEffects-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/service/notification/ZenDeviceEffects;-><init>(ZZZZZZZZZZZLjava/util/Set;)V

    return-void
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "bitmask"    # I

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 229
    const-string v1, "FIELD_GRAYSCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 232
    const-string v1, "FIELD_SUPPRESS_AMBIENT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 235
    const-string v1, "FIELD_DIM_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 238
    const-string v1, "FIELD_NIGHT_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 241
    const-string v1, "FIELD_DISABLE_AUTO_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 244
    const-string v1, "FIELD_DISABLE_TAP_TO_WAKE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 247
    const-string v1, "FIELD_DISABLE_TILT_TO_WAKE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 250
    const-string v1, "FIELD_DISABLE_TOUCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 253
    const-string v1, "FIELD_MINIMIZE_RADIO_USAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_56
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5f

    .line 256
    const-string v1, "FIELD_MAXIMIZE_DOZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_5f
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_68

    .line 259
    const-string v1, "FIELD_NIGHT_LIGHT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    .line 262
    const-string v1, "FIELD_EXTRA_EFFECTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    instance-of v0, p1, Landroid/service/notification/ZenDeviceEffects;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    .line 172
    .local v0, "that":Landroid/service/notification/ZenDeviceEffects;
    const/4 v2, 0x1

    if-ne p1, p0, :cond_c

    return v2

    .line 174
    :cond_c
    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    iget-boolean v4, v0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    iget-object v4, v0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 185
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    move v1, v2

    goto :goto_5b

    :cond_5a
    nop

    .line 174
    :goto_5b
    return v1

    .line 171
    .end local v0    # "that":Landroid/service/notification/ZenDeviceEffects;
    :cond_5c
    return v1
.end method

.method public blacklist getExtraEffects()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist hasEffects()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 382
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 371
    :goto_38
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 190
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    .line 201
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldDimWallpaper()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    return v0
.end method

.method public blacklist shouldDisableAutoBrightness()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    return v0
.end method

.method public blacklist shouldDisableTapToWake()Z
    .registers 2

    .line 308
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    return v0
.end method

.method public blacklist shouldDisableTiltToWake()Z
    .registers 2

    .line 316
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    return v0
.end method

.method public blacklist shouldDisableTouch()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    return v0
.end method

.method public whitelist shouldDisplayGrayscale()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    return v0
.end method

.method public blacklist shouldMaximizeDoze()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    return v0
.end method

.method public blacklist shouldMinimizeRadioUsage()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    return v0
.end method

.method public whitelist shouldSuppressAmbientDisplay()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    return v0
.end method

.method public blacklist shouldUseNightLight()Z
    .registers 2

    .line 351
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    return v0
.end method

.method public whitelist shouldUseNightMode()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v0, "effects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-eqz v1, :cond_11

    const-string/jumbo v1, "grayscale"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_11
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "suppressAmbientDisplay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1b
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-eqz v1, :cond_24

    const-string v1, "dimWallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_24
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "nightMode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2e
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-eqz v1, :cond_37

    const-string v1, "disableAutoBrightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_37
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-eqz v1, :cond_40

    const-string v1, "disableTapToWake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_40
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-eqz v1, :cond_49

    const-string v1, "disableTiltToWake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_49
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-eqz v1, :cond_52

    const-string v1, "disableTouch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_52
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "minimizeRadioUsage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5c
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-eqz v1, :cond_66

    const-string/jumbo v1, "maximizeDoze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_66
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-eqz v1, :cond_70

    const-string/jumbo v1, "nightLight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_70
    iget-object v1, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "]"

    if-lez v1, :cond_9c

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraEffects=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    iget-object v4, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist validate()V
    .registers 5

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "extraEffectsLength":I
    iget-object v1, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "extraEffect":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 161
    .end local v2    # "extraEffect":Ljava/lang/String;
    goto :goto_7

    .line 162
    :cond_19
    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_1e

    .line 167
    return-void

    .line 163
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Total size of extra effects must be at most 2000 characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 419
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 425
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 428
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 430
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 431
    return-void
.end method
