.class public final Landroid/adservices/ondevicepersonalization/OSVersion;
.super Ljava/lang/Object;
.source "OSVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/OSVersion$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/OSVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mMajor:I

.field blacklist mMicro:I

.field blacklist mMinor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/adservices/ondevicepersonalization/OSVersion$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/OSVersion$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/OSVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(III)V
    .registers 7
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "micro"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    .line 62
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 64
    iput p2, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    .line 65
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 67
    iput p3, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    .line 68
    const-class v0, Landroid/annotation/NonNull;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "major":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, "minor":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "micro":I
    iput v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    .line 156
    const-class v3, Landroid/annotation/NonNull;

    iget v4, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 158
    iput v1, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    .line 159
    const-class v3, Landroid/annotation/NonNull;

    iget v4, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 161
    iput v2, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    .line 162
    const-class v3, Landroid/annotation/NonNull;

    iget v4, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    invoke-static {v3, v5, v4}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 166
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 106
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 108
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/OSVersion;

    .line 110
    .local v2, "that":Landroid/adservices/ondevicepersonalization/OSVersion;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 106
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/OSVersion;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public blacklist getMajor()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    return v0
.end method

.method public blacklist getMicro()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    return v0
.end method

.method public blacklist getMinor()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 122
    const/4 v0, 0x1

    .line 123
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    add-int/2addr v1, v2

    .line 124
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    add-int/2addr v0, v2

    .line 125
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    add-int/2addr v1, v2

    .line 126
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMinor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/adservices/ondevicepersonalization/OSVersion;->mMicro:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
