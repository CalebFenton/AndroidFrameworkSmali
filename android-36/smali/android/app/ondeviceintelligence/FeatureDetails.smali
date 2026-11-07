.class public final Landroid/app/ondeviceintelligence/FeatureDetails;
.super Ljava/lang/Object;
.source "FeatureDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/FeatureDetails$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_STATUS_AVAILABLE:I = 0x3

.field public static final whitelist FEATURE_STATUS_DOWNLOADABLE:I = 0x1

.field public static final whitelist FEATURE_STATUS_DOWNLOADING:I = 0x2

.field public static final whitelist FEATURE_STATUS_SERVICE_UNAVAILABLE:I = 0x4

.field public static final whitelist FEATURE_STATUS_UNAVAILABLE:I


# instance fields
.field private final blacklist mFeatureDetailParams:Landroid/os/PersistableBundle;

.field private final blacklist mFeatureStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/app/ondeviceintelligence/FeatureDetails$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/FeatureDetails$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/FeatureDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "featureStatus"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    .line 91
    const-class v0, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    const/4 v1, 0x0

    iget v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 93
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "featureStatus"    # I
    .param p2, "featureDetailParams"    # Landroid/os/PersistableBundle;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    .line 81
    const-class v0, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    iget v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 83
    iput-object p2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    .line 84
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "status":I
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 156
    .local v1, "persistableBundle":Landroid/os/PersistableBundle;
    iput v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    .line 157
    const-class v2, Landroid/app/ondeviceintelligence/FeatureDetails$Status;

    iget v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 159
    iput-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    .line 160
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 123
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 125
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/ondeviceintelligence/FeatureDetails;

    .line 126
    .local v2, "that":Landroid/app/ondeviceintelligence/FeatureDetails;
    iget v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    iget v4, v2, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 126
    :goto_27
    return v0

    .line 123
    .end local v2    # "that":Landroid/app/ondeviceintelligence/FeatureDetails;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getFeatureDetailParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getFeatureStatus()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 132
    const/4 v0, 0x1

    .line 133
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    add-int/2addr v1, v2

    .line 134
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 114
    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 114
    const-string v1, "FeatureDetails \'{\' status = {0}, persistableBundle = {1} \'}\'"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/app/ondeviceintelligence/FeatureDetails;->mFeatureDetailParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    return-void
.end method
