.class public final Landroid/content/pm/PackageInstaller$InstallConstraints;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallConstraints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;


# instance fields
.field private final blacklist mAppNotForegroundRequired:Z

.field private final blacklist mAppNotInteractingRequired:Z

.field private final blacklist mAppNotTopVisibleRequired:Z

.field private final blacklist mDeviceIdleRequired:Z

.field private final blacklist mNotInCallRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5049
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;-><init>()V

    .line 5050
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->build()Landroid/content/pm/PackageInstaller$InstallConstraints;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 5282
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5265
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 5266
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 5267
    .local v1, "deviceIdleRequired":Z
    :goto_10
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    .line 5268
    .local v4, "appNotForegroundRequired":Z
    :goto_17
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1d

    move v5, v3

    goto :goto_1e

    :cond_1d
    move v5, v2

    .line 5269
    .local v5, "appNotInteractingRequired":Z
    :goto_1e
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_24

    move v6, v3

    goto :goto_25

    :cond_24
    move v6, v2

    .line 5270
    .local v6, "appNotTopVisibleRequired":Z
    :goto_25
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_2a

    move v2, v3

    .line 5272
    .local v2, "notInCallRequired":Z
    :cond_2a
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    .line 5273
    iput-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    .line 5274
    iput-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    .line 5275
    iput-boolean v6, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    .line 5276
    iput-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    .line 5279
    return-void
.end method

.method public constructor blacklist <init>(ZZZZZ)V
    .registers 6
    .param p1, "deviceIdleRequired"    # Z
    .param p2, "appNotForegroundRequired"    # Z
    .param p3, "appNotInteractingRequired"    # Z
    .param p4, "appNotTopVisibleRequired"    # Z
    .param p5, "notInCallRequired"    # Z

    .line 5169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5170
    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    .line 5171
    iput-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    .line 5172
    iput-boolean p3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    .line 5173
    iput-boolean p4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    .line 5174
    iput-boolean p5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    .line 5177
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5302
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5256
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 5211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 5212
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 5214
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 5216
    .local v2, "that":Landroid/content/pm/PackageInstaller$InstallConstraints;
    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    iget-boolean v4, v2, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    .line 5212
    .end local v2    # "that":Landroid/content/pm/PackageInstaller$InstallConstraints;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 5230
    const/4 v0, 0x1

    .line 5231
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5232
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 5233
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5234
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 5235
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5236
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isAppNotForegroundRequired()Z
    .registers 2

    .line 5186
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    return v0
.end method

.method public whitelist isAppNotInteractingRequired()Z
    .registers 2

    .line 5191
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    return v0
.end method

.method public whitelist isAppNotTopVisibleRequired()Z
    .registers 2

    .line 5196
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    return v0
.end method

.method public whitelist isDeviceIdleRequired()Z
    .registers 2

    .line 5181
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    return v0
.end method

.method public whitelist isNotInCallRequired()Z
    .registers 2

    .line 5201
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5245
    const/4 v0, 0x0

    .line 5246
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 5247
    :cond_8
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 5248
    :cond_f
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 5249
    :cond_16
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 5250
    :cond_1d
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-eqz v1, :cond_24

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 5251
    :cond_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5252
    return-void
.end method
