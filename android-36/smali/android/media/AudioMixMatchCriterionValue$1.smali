.class Landroid/media/AudioMixMatchCriterionValue$1;
.super Ljava/lang/Object;
.source "AudioMixMatchCriterionValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMixMatchCriterionValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioMixMatchCriterionValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 121
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioMixMatchCriterionValue;-><init>(Landroid/os/Parcel;Landroid/media/AudioMixMatchCriterionValue-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Landroid/media/AudioMixMatchCriterionValue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioMixMatchCriterionValue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/AudioMixMatchCriterionValue;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 125
    new-array v0, p1, [Landroid/media/AudioMixMatchCriterionValue;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Landroid/media/AudioMixMatchCriterionValue$1;->newArray(I)[Landroid/media/AudioMixMatchCriterionValue;

    move-result-object p1

    return-object p1
.end method
