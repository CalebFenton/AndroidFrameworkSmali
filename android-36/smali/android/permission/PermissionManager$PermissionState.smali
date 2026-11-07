.class public final Landroid/permission/PermissionManager$PermissionState;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mGranted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2235
    new-instance v0, Landroid/permission/PermissionManager$PermissionState$1;

    invoke-direct {v0}, Landroid/permission/PermissionManager$PermissionState$1;-><init>()V

    sput-object v0, Landroid/permission/PermissionManager$PermissionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2231
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    .line 2232
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/permission/PermissionManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/permission/PermissionManager$PermissionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZI)V
    .registers 3
    .param p1, "granted"    # Z
    .param p2, "flags"    # I

    .line 2195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2196
    iput-boolean p1, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    .line 2197
    iput p2, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    .line 2198
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2220
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2249
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 2250
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/permission/PermissionManager$PermissionState;

    .line 2251
    .local v2, "that":Landroid/permission/PermissionManager$PermissionState;
    iget-boolean v3, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    iget-boolean v4, v2, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    iget v4, v2, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    .line 2249
    .end local v2    # "that":Landroid/permission/PermissionManager$PermissionState;
    :cond_24
    :goto_24
    return v1
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 2214
    iget v0, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2257
    iget-boolean v0, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isGranted()Z
    .registers 2

    .line 2205
    iget-boolean v0, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionState{mGranted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2226
    iget-boolean v0, p0, Landroid/permission/PermissionManager$PermissionState;->mGranted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2227
    iget v0, p0, Landroid/permission/PermissionManager$PermissionState;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    return-void
.end method
