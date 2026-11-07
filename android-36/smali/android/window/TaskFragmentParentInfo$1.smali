.class Landroid/window/TaskFragmentParentInfo$1;
.super Ljava/lang/Object;
.source "TaskFragmentParentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentParentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/TaskFragmentParentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentParentInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 225
    new-instance v0, Landroid/window/TaskFragmentParentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/os/Parcel;Landroid/window/TaskFragmentParentInfo-IA;)V

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

    .line 222
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentParentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentParentInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/TaskFragmentParentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 230
    new-array v0, p1, [Landroid/window/TaskFragmentParentInfo;

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

    .line 222
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentParentInfo$1;->newArray(I)[Landroid/window/TaskFragmentParentInfo;

    move-result-object p1

    return-object p1
.end method
