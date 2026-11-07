.class public Landroid/location/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAddressLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAdminArea:Ljava/lang/String;

.field private greylist-max-o mCountryCode:Ljava/lang/String;

.field private greylist-max-o mCountryName:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFeatureName:Ljava/lang/String;

.field private greylist-max-o mHasLatitude:Z

.field private greylist-max-o mHasLongitude:Z

.field private greylist-max-o mLatitude:D

.field private greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mLocality:Ljava/lang/String;

.field private greylist-max-o mLongitude:D

.field private greylist-max-o mMaxAddressLineIndex:I

.field private greylist-max-o mPhone:Ljava/lang/String;

.field private greylist-max-o mPostalCode:Ljava/lang/String;

.field private greylist-max-o mPremises:Ljava/lang/String;

.field private greylist-max-o mSubAdminArea:Ljava/lang/String;

.field private greylist-max-o mSubLocality:Ljava/lang/String;

.field private greylist-max-o mSubThoroughfare:Ljava/lang/String;

.field private greylist-max-o mThoroughfare:Ljava/lang/String;

.field private greylist-max-o mUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddressLines(Landroid/location/Address;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasLatitude(Landroid/location/Address;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/Address;->mHasLatitude:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasLongitude(Landroid/location/Address;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/Address;->mHasLongitude:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxAddressLineIndex(Landroid/location/Address;)I
    .registers 1

    iget p0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAddressLines(Landroid/location/Address;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdminArea(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCountryCode(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCountryName(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/location/Address;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFeatureName(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasLatitude(Landroid/location/Address;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Address;->mHasLatitude:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasLongitude(Landroid/location/Address;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/Address;->mHasLongitude:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatitude(Landroid/location/Address;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocality(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongitude(Landroid/location/Address;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxAddressLineIndex(Landroid/location/Address;I)V
    .registers 2

    iput p1, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhone(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostalCode(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPremises(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubAdminArea(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubLocality(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubThoroughfare(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThoroughfare(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUrl(Landroid/location/Address;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 475
    new-instance v0, Landroid/location/Address$1;

    invoke-direct {v0}, Landroid/location/Address$1;-><init>()V

    sput-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 54
    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 64
    iput-object p1, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist clearLatitude()V
    .registers 2

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 322
    return-void
.end method

.method public whitelist clearLongitude()V
    .registers 2

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 359
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getAddressLine(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 89
    if-ltz p1, :cond_15

    .line 92
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_14

    :cond_8
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    return-object v0

    .line 90
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAdminArea()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCountryCode()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCountryName()Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 410
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFeatureName()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 302
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_7

    .line 303
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    return-wide v0

    .line 305
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getLocality()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 339
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_7

    .line 340
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    return-wide v0

    .line 342
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist getMaxAddressLineIndex()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method public whitelist getPhone()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPostalCode()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPremises()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubAdminArea()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubLocality()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubThoroughfare()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getThoroughfare()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasLatitude()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method public whitelist hasLongitude()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method public whitelist setAddressLine(ILjava/lang/String;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 102
    if-ltz p1, :cond_48

    .line 105
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    .line 108
    :cond_d
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    if-nez p2, :cond_3f

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 113
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 114
    .local v1, "i":Ljava/lang/Integer;
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 115
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_25

    :cond_3e
    goto :goto_47

    .line 117
    :cond_3f
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 119
    :goto_47
    return-void

    .line 103
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAdminArea(Ljava/lang/String;)V
    .registers 2
    .param p1, "adminArea"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public whitelist setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public whitelist setCountryName(Ljava/lang/String;)V
    .registers 2
    .param p1, "countryName"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 418
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_9
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 419
    return-void
.end method

.method public whitelist setFeatureName(Ljava/lang/String;)V
    .registers 2
    .param p1, "featureName"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public whitelist setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .line 313
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 315
    return-void
.end method

.method public whitelist setLocality(Ljava/lang/String;)V
    .registers 2
    .param p1, "locality"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public whitelist setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .line 350
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 352
    return-void
.end method

.method public whitelist setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "phone"    # Ljava/lang/String;

    .line 376
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public whitelist setPostalCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "postalCode"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public whitelist setPremises(Ljava/lang/String;)V
    .registers 2
    .param p1, "premises"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public whitelist setSubAdminArea(Ljava/lang/String;)V
    .registers 2
    .param p1, "subAdminArea"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public whitelist setSubLocality(Ljava/lang/String;)V
    .registers 2
    .param p1, "sublocality"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public whitelist setSubThoroughfare(Ljava/lang/String;)V
    .registers 2
    .param p1, "subthoroughfare"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public whitelist setThoroughfare(Ljava/lang/String;)V
    .registers 2
    .param p1, "thoroughfare"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public whitelist setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "Url"    # Ljava/lang/String;

    .line 391
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address[addressLines=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    if-gt v1, v2, :cond_40

    .line 426
    if-lez v1, :cond_16

    .line 427
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 432
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_32

    .line 433
    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 435
    :cond_32
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .end local v2    # "line":Ljava/lang/String;
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 440
    .end local v1    # "i":I
    :cond_40
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    const-string v2, ",feature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v2, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, ",admin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v2, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v2, ",sub-admin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v2, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v2, ",locality="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v2, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, ",thoroughfare="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v2, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v2, ",postalCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v2, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v2, ",countryCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v2, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v2, ",countryName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v2, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v2, ",hasLatitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-boolean v2, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    const-string v2, ",latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-wide v2, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, ",hasLongitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v2, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    const-string v2, ",longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v2, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, ",phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, ",url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v2, ",extras="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 534
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_1b

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .line 539
    :cond_1b
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 540
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 542
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_2c

    .line 546
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_94

    .line 559
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 561
    :cond_94
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_a2

    .line 563
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 565
    :cond_a2
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 568
    return-void
.end method
