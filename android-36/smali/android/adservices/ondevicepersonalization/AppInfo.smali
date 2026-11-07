.class public final Landroid/adservices/ondevicepersonalization/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/AppInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInstalled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroid/adservices/ondevicepersonalization/AppInfo$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/AppInfo$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 116
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    .line 118
    .local v0, "installed":Z
    :cond_f
    iput-boolean v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    .line 119
    const-class v2, Landroid/annotation/NonNull;

    iget-boolean v3, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    .line 120
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 119
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3
    .param p1, "installed"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    .line 43
    iput-boolean p1, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    .line 44
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 74
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 76
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/AppInfo;

    .line 78
    .local v2, "that":Landroid/adservices/ondevicepersonalization/AppInfo;
    iget-boolean v3, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    iget-boolean v4, v2, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 74
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/AppInfo;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 90
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist isInstalled()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/adservices/ondevicepersonalization/AppInfo;->mInstalled:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 101
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    return-void
.end method
