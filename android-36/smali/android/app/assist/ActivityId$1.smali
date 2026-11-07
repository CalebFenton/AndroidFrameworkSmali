.class Landroid/app/assist/ActivityId$1;
.super Ljava/lang/Object;
.source "ActivityId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/ActivityId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/assist/ActivityId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Landroid/app/assist/ActivityId;

    invoke-direct {v0, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

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

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/assist/ActivityId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/assist/ActivityId;
    .registers 3
    .param p1, "size"    # I

    .line 122
    new-array v0, p1, [Landroid/app/assist/ActivityId;

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

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/assist/ActivityId$1;->newArray(I)[Landroid/app/assist/ActivityId;

    move-result-object p1

    return-object p1
.end method
