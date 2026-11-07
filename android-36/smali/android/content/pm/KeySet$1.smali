.class Landroid/content/pm/KeySet$1;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/KeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/KeySet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 76
    invoke-static {p1}, Landroid/content/pm/KeySet;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object v0

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

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/KeySet$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/KeySet;
    .registers 3
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/content/pm/KeySet;

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

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/KeySet$1;->newArray(I)[Landroid/content/pm/KeySet;

    move-result-object p1

    return-object p1
.end method
