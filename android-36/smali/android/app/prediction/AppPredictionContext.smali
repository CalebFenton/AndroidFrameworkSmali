.class public final Landroid/app/prediction/AppPredictionContext;
.super Ljava/lang/Object;
.source "AppPredictionContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictionContext$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppPredictionContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPredictedTargetCount:I

.field private final blacklist mUiSurface:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/app/prediction/AppPredictionContext$1;

    invoke-direct {v0}, Landroid/app/prediction/AppPredictionContext$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppPredictionContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictionContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uiSurface"    # Ljava/lang/String;
    .param p2, "numPredictedTargets"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 49
    iput p2, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    .line 50
    iput-object p3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/prediction/AppPredictionContext-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/prediction/AppPredictionContext;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 95
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 97
    :cond_18
    move-object v1, p1

    check-cast v1, Landroid/app/prediction/AppPredictionContext;

    .line 98
    .local v1, "other":Landroid/app/prediction/AppPredictionContext;
    iget v3, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    iget v4, v1, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 98
    :goto_37
    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPredictedTargetCount()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    return v0
.end method

.method public whitelist getUiSurface()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 105
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 106
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method
