.class public final Landroid/provider/CloudMediaProviderContract$Capabilities;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/CloudMediaProviderContract$Capabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlbumsAsCategory:Z

.field private blacklist mMediaCategoriesEnabled:Z

.field private blacklist mSearchEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/provider/CloudMediaProviderContract$Capabilities$1;

    invoke-direct {v0}, Landroid/provider/CloudMediaProviderContract$Capabilities$1;-><init>()V

    sput-object v0, Landroid/provider/CloudMediaProviderContract$Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->-$$Nest$fgetmSearchEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mSearchEnabled:Z

    .line 84
    invoke-static {p1}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->-$$Nest$fgetmMediaCategoriesEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mMediaCategoriesEnabled:Z

    .line 85
    invoke-static {p1}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->-$$Nest$fgetmAlbumsAsCategoryEnabled(Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mAlbumsAsCategory:Z

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlbumsAsCategoryEnabled()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mAlbumsAsCategory:Z

    return v0
.end method

.method public whitelist isMediaCategoriesEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mMediaCategoriesEnabled:Z

    return v0
.end method

.method public whitelist isSearchEnabled()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mSearchEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isSearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mSearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMediaCategoriesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mMediaCategoriesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAlbumsAsCategoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mAlbumsAsCategory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mSearchEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mMediaCategoriesEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    iget-boolean v0, p0, Landroid/provider/CloudMediaProviderContract$Capabilities;->mAlbumsAsCategory:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    return-void
.end method
