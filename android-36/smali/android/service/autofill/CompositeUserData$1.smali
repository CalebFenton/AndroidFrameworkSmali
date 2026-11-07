.class Landroid/service/autofill/CompositeUserData$1;
.super Ljava/lang/Object;
.source "CompositeUserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CompositeUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CompositeUserData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CompositeUserData;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 200
    const-class v0, Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/UserData;

    .line 201
    .local v0, "genericUserData":Landroid/service/autofill/UserData;
    const-class v2, Landroid/service/autofill/UserData;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;

    .line 202
    .local v1, "packageUserData":Landroid/service/autofill/UserData;
    new-instance v2, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v2, v0, v1}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    return-object v2
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

    .line 194
    invoke-virtual {p0, p1}, Landroid/service/autofill/CompositeUserData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CompositeUserData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CompositeUserData;
    .registers 3
    .param p1, "size"    # I

    .line 207
    new-array v0, p1, [Landroid/service/autofill/CompositeUserData;

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

    .line 194
    invoke-virtual {p0, p1}, Landroid/service/autofill/CompositeUserData$1;->newArray(I)[Landroid/service/autofill/CompositeUserData;

    move-result-object p1

    return-object p1
.end method
