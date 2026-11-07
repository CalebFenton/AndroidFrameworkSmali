.class public Landroid/app/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mCallerToken:Landroid/os/IBinder;

.field public final greylist mData:Landroid/content/Intent;

.field public final greylist mRequestCode:I

.field public final greylist-max-o mResultCode:I

.field public final greylist mResultWho:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Landroid/app/ResultInfo$1;

    invoke-direct {v0}, Landroid/app/ResultInfo$1;-><init>()V

    sput-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ResultInfo;->mRequestCode:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ResultInfo;->mResultCode:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 96
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    goto :goto_29

    .line 98
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 100
    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    .line 101
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 11
    .param p1, "resultWho"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 45
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "resultWho":Ljava/lang/String;
    .end local p2    # "requestCode":I
    .end local p3    # "resultCode":I
    .end local p4    # "data":Landroid/content/Intent;
    .local v1, "resultWho":Ljava/lang/String;
    .local v2, "requestCode":I
    .local v3, "resultCode":I
    .local v4, "data":Landroid/content/Intent;
    invoke-direct/range {v0 .. v5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "resultWho"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;
    .param p5, "callerToken"    # Landroid/os/IBinder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroid/app/ResultInfo;->mRequestCode:I

    .line 52
    iput p3, p0, Landroid/app/ResultInfo;->mResultCode:I

    .line 53
    iput-object p4, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 54
    iput-object p5, p0, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    if-eqz p1, :cond_41

    instance-of v1, p1, Landroid/app/ResultInfo;

    if-nez v1, :cond_8

    goto :goto_41

    .line 108
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/app/ResultInfo;

    .line 109
    .local v1, "other":Landroid/app/ResultInfo;
    iget-object v2, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    const/4 v3, 0x1

    if-nez v2, :cond_18

    iget-object v2, v1, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-nez v2, :cond_16

    move v2, v3

    goto :goto_20

    :cond_16
    move v2, v0

    goto :goto_20

    .line 110
    :cond_18
    iget-object v2, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, v1, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    :goto_20
    nop

    .line 111
    .local v2, "intentsEqual":Z
    if-eqz v2, :cond_40

    iget-object v4, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget-object v5, v1, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, p0, Landroid/app/ResultInfo;->mResultCode:I

    iget v5, v1, Landroid/app/ResultInfo;->mResultCode:I

    if-ne v4, v5, :cond_40

    iget v4, p0, Landroid/app/ResultInfo;->mRequestCode:I

    iget v5, v1, Landroid/app/ResultInfo;->mRequestCode:I

    if-ne v4, v5, :cond_40

    iget-object v4, p0, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    if-ne v4, v5, :cond_40

    move v0, v3

    :cond_40
    return v0

    .line 106
    .end local v1    # "other":Landroid/app/ResultInfo;
    .end local v2    # "intentsEqual":Z
    :cond_41
    :goto_41
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 119
    const/16 v0, 0x11

    .line 120
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ResultInfo;->mRequestCode:I

    add-int/2addr v1, v2

    .line 121
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ResultInfo;->mResultCode:I

    add-int/2addr v0, v2

    .line 122
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_23

    .line 124
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v1, v0, v2

    .line 126
    :cond_23
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultInfo{who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ResultInfo;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ResultInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroid/app/ResultInfo;->mRequestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/app/ResultInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 74
    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    :goto_21
    iget-object v0, p0, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 77
    return-void
.end method
