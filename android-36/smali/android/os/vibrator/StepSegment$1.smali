.class Landroid/os/vibrator/StepSegment$1;
.super Ljava/lang/Object;
.source "StepSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/StepSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/StepSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/StepSegment;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 208
    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/StepSegment;-><init>(Landroid/os/Parcel;)V

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

    .line 203
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/vibrator/StepSegment;
    .registers 3
    .param p1, "size"    # I

    .line 213
    new-array v0, p1, [Landroid/os/vibrator/StepSegment;

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

    .line 203
    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment$1;->newArray(I)[Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method
