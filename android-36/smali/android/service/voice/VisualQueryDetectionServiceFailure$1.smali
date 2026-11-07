.class Landroid/service/voice/VisualQueryDetectionServiceFailure$1;
.super Ljava/lang/Object;
.source "VisualQueryDetectionServiceFailure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetectionServiceFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/voice/VisualQueryDetectionServiceFailure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    new-instance v0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

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

    .line 150
    invoke-virtual {p0, p1}, Landroid/service/voice/VisualQueryDetectionServiceFailure$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/voice/VisualQueryDetectionServiceFailure;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .registers 3
    .param p1, "size"    # I

    .line 153
    new-array v0, p1, [Landroid/service/voice/VisualQueryDetectionServiceFailure;

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

    .line 150
    invoke-virtual {p0, p1}, Landroid/service/voice/VisualQueryDetectionServiceFailure$1;->newArray(I)[Landroid/service/voice/VisualQueryDetectionServiceFailure;

    move-result-object p1

    return-object p1
.end method
