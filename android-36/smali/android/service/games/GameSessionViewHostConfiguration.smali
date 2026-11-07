.class public final Landroid/service/games/GameSessionViewHostConfiguration;
.super Ljava/lang/Object;
.source "GameSessionViewHostConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mDisplayId:I

.field final blacklist mHeightPx:I

.field final blacklist mWidthPx:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/service/games/GameSessionViewHostConfiguration$1;

    invoke-direct {v0}, Landroid/service/games/GameSessionViewHostConfiguration$1;-><init>()V

    sput-object v0, Landroid/service/games/GameSessionViewHostConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "widthPx"    # I
    .param p3, "heightPx"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    .line 58
    iput p2, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    .line 59
    iput p3, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 77
    :cond_4
    instance-of v1, p1, Landroid/service/games/GameSessionViewHostConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 78
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/service/games/GameSessionViewHostConfiguration;

    .line 79
    .local v1, "that":Landroid/service/games/GameSessionViewHostConfiguration;
    iget v3, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    iget v4, v1, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v4, v1, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    iget v4, v1, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 85
    iget v0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameSessionViewHostConfiguration{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget v0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void
.end method
