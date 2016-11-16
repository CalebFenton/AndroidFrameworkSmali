.class public Landroid/location/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Address$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminArea:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFeatureName:Ljava/lang/String;

.field private mHasLatitude:Z

.field private mHasLongitude:Z

.field private mLatitude:D

.field private mLocale:Ljava/util/Locale;

.field private mLocality:Ljava/lang/String;

.field private mLongitude:D

.field private mMaxAddressLineIndex:I

.field private mPhone:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPremises:Ljava/lang/String;

.field private mSubAdminArea:Ljava/lang/String;

.field private mSubLocality:Ljava/lang/String;

.field private mSubThoroughfare:Ljava/lang/String;

.field private mThoroughfare:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/location/Address;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/location/Address;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/location/Address;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/location/Address;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Landroid/location/Address;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/Address;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@2
    return p1
.end method

.method static synthetic -set12(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set14(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set15(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set16(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set17(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set18(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set19(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Landroid/location/Address;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Address;->mHasLatitude:Z

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/location/Address;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Address;->mHasLongitude:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/location/Address;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 476
    new-instance v0, Landroid/location/Address$1;

    #@2
    invoke-direct {v0}, Landroid/location/Address$1;-><init>()V

    #@5
    .line 475
    sput-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@7
    .line 53
    iput-boolean v1, p0, Landroid/location/Address;->mHasLatitude:Z

    #@9
    .line 54
    iput-boolean v1, p0, Landroid/location/Address;->mHasLongitude:Z

    #@b
    .line 57
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@e
    .line 64
    iput-object p1, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    #@10
    .line 63
    return-void
.end method


# virtual methods
.method public clearLatitude()V
    .locals 1

    #@0
    .prologue
    .line 321
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    #@3
    .line 320
    return-void
.end method

.method public clearLongitude()V
    .locals 1

    #@0
    .prologue
    .line 358
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    #@3
    .line 357
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getAddressLine(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    if-gez p1, :cond_0

    #@3
    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "index = "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " < 0"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 92
    :cond_0
    iget-object v1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@26
    if-nez v1, :cond_1

    #@28
    :goto_0
    return-object v0

    #@29
    :cond_1
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    goto :goto_0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 303
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    #@6
    return-wide v0

    #@7
    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 340
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    #@6
    return-wide v0

    #@7
    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v0
.end method

.method public getMaxAddressLineIndex()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@2
    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPremises()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubAdminArea()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubLocality()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubThoroughfare()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getThoroughfare()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasLatitude()Z
    .locals 1

    #@0
    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    #@2
    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    #@0
    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    #@2
    return v0
.end method

.method public setAddressLine(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    if-gez p1, :cond_0

    #@2
    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "index = "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, " < 0"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 105
    :cond_0
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@25
    if-nez v2, :cond_1

    #@27
    .line 106
    new-instance v2, Ljava/util/HashMap;

    #@29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@2c
    iput-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@2e
    .line 108
    :cond_1
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 110
    if-nez p2, :cond_2

    #@39
    .line 112
    const/4 v2, -0x1

    #@3a
    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@3c
    .line 113
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@3e
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@41
    move-result-object v2

    #@42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v1

    #@46
    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_3

    #@4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/Integer;

    #@52
    .line 114
    .local v0, "i":Ljava/lang/Integer;
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v3

    #@58
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@5e
    goto :goto_0

    #@5f
    .line 117
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_2
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@61
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    #@64
    move-result v2

    #@65
    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@67
    .line 101
    :cond_3
    return-void
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminArea"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    #@2
    .line 147
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    #@2
    .line 267
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    #@2
    .line 283
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 418
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@5
    .line 417
    return-void

    #@6
    .line 418
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    goto :goto_0
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    #@2
    .line 132
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    #@0
    .prologue
    .line 313
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    #@2
    .line 314
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    #@5
    .line 312
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    #@2
    .line 176
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    #@0
    .prologue
    .line 350
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    #@2
    .line 351
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    #@5
    .line 349
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    #@2
    .line 375
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    #@2
    .line 251
    return-void
.end method

.method public setPremises(Ljava/lang/String;)V
    .locals 0
    .param p1, "premises"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    #@2
    .line 235
    return-void
.end method

.method public setSubAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "subAdminArea"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    #@2
    .line 162
    return-void
.end method

.method public setSubLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "sublocality"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    #@2
    .line 191
    return-void
.end method

.method public setSubThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "subthoroughfare"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    #@2
    .line 221
    return-void
.end method

.method public setThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "thoroughfare"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    #@2
    .line 206
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    #@2
    .line 390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x5d

    #@2
    const/16 v5, 0x22

    #@4
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 424
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Address[addressLines=["

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 425
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    #@12
    if-gt v0, v3, :cond_2

    #@14
    .line 426
    if-lez v0, :cond_0

    #@16
    .line 427
    const/16 v3, 0x2c

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 429
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 430
    const/16 v3, 0x3a

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 431
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/String;

    #@2f
    .line 432
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    #@31
    .line 433
    const-string/jumbo v3, "null"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 425
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 435
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 436
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 437
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 440
    .end local v1    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 441
    const-string/jumbo v3, ",feature="

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 442
    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 443
    const-string/jumbo v3, ",admin="

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 444
    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 445
    const-string/jumbo v3, ",sub-admin="

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 446
    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 447
    const-string/jumbo v3, ",locality="

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 448
    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 449
    const-string/jumbo v3, ",thoroughfare="

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 450
    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 451
    const-string/jumbo v3, ",postalCode="

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 452
    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 453
    const-string/jumbo v3, ",countryCode="

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 454
    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 455
    const-string/jumbo v3, ",countryName="

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 456
    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 457
    const-string/jumbo v3, ",hasLatitude="

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 458
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@aa
    .line 459
    const-string/jumbo v3, ",latitude="

    #@ad
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 460
    iget-wide v4, p0, Landroid/location/Address;->mLatitude:D

    #@b2
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@b5
    .line 461
    const-string/jumbo v3, ",hasLongitude="

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    .line 462
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    #@bd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c0
    .line 463
    const-string/jumbo v3, ",longitude="

    #@c3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    .line 464
    iget-wide v4, p0, Landroid/location/Address;->mLongitude:D

    #@c8
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@cb
    .line 465
    const-string/jumbo v3, ",phone="

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    .line 466
    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    #@d3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 467
    const-string/jumbo v3, ",url="

    #@d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 468
    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    .line 469
    const-string/jumbo v3, ",extras="

    #@e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 470
    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ec
    .line 471
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ef
    .line 472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 534
    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    #@4
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 535
    iget-object v3, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    #@d
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 536
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@16
    if-nez v3, :cond_3

    #@18
    .line 537
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 546
    :cond_0
    iget-object v3, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 547
    iget-object v3, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 548
    iget-object v3, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 549
    iget-object v3, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 550
    iget-object v3, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 551
    iget-object v3, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    #@36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@39
    .line 552
    iget-object v3, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    #@3b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3e
    .line 553
    iget-object v3, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    #@40
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@43
    .line 554
    iget-object v3, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@48
    .line 555
    iget-object v3, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    #@4a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4d
    .line 556
    iget-object v3, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    #@4f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@52
    .line 557
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    #@54
    if-eqz v3, :cond_4

    #@56
    move v3, v4

    #@57
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 558
    iget-boolean v3, p0, Landroid/location/Address;->mHasLatitude:Z

    #@5c
    if-eqz v3, :cond_1

    #@5e
    .line 559
    iget-wide v6, p0, Landroid/location/Address;->mLatitude:D

    #@60
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V

    #@63
    .line 561
    :cond_1
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    #@65
    if-eqz v3, :cond_5

    #@67
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 562
    iget-boolean v3, p0, Landroid/location/Address;->mHasLongitude:Z

    #@6c
    if-eqz v3, :cond_2

    #@6e
    .line 563
    iget-wide v4, p0, Landroid/location/Address;->mLongitude:D

    #@70
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    #@73
    .line 565
    :cond_2
    iget-object v3, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    #@75
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@78
    .line 566
    iget-object v3, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    #@7a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7d
    .line 567
    iget-object v3, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    #@7f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@82
    .line 533
    return-void

    #@83
    .line 539
    :cond_3
    iget-object v3, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    #@85
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@88
    move-result-object v2

    #@89
    .line 540
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@8c
    move-result v3

    #@8d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    .line 541
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@93
    move-result-object v1

    #@94
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_0

    #@9a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9d
    move-result-object v0

    #@9e
    check-cast v0, Ljava/util/Map$Entry;

    #@a0
    .line 542
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a3
    move-result-object v3

    #@a4
    check-cast v3, Ljava/lang/Integer;

    #@a6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@a9
    move-result v3

    #@aa
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ad
    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b0
    move-result-object v3

    #@b1
    check-cast v3, Ljava/lang/String;

    #@b3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b6
    goto :goto_2

    #@b7
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_4
    move v3, v5

    #@b8
    .line 557
    goto :goto_0

    #@b9
    :cond_5
    move v4, v5

    #@ba
    .line 561
    goto :goto_1
.end method
