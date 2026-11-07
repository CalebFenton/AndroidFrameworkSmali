.class public final Landroid/service/notification/NotifyingApp;
.super Ljava/lang/Object;
.source "NotifyingApp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/service/notification/NotifyingApp;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLastNotified:J

.field private greylist-max-o mPkg:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/service/notification/NotifyingApp$1;

    invoke-direct {v0}, Landroid/service/notification/NotifyingApp$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotifyingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    .line 40
    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/service/notification/NotifyingApp;)I
    .registers 6
    .param p1, "o"    # Landroid/service/notification/NotifyingApp;

    .line 122
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 123
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 124
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 126
    :cond_23
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 129
    :cond_30
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/service/notification/NotifyingApp;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotifyingApp;->compareTo(Landroid/service/notification/NotifyingApp;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 105
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 106
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotifyingApp;

    .line 107
    .local v2, "that":Landroid/service/notification/NotifyingApp;
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_36

    .line 108
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 107
    :goto_37
    return v0

    .line 105
    .end local v2    # "that":Landroid/service/notification/NotifyingApp;
    :cond_38
    :goto_38
    return v1
.end method

.method public greylist-max-o getLastNotified()J
    .registers 3

    .line 67
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-wide v0
.end method

.method public greylist-max-o getPackage()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 114
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setLastNotified(J)Landroid/service/notification/NotifyingApp;
    .registers 3
    .param p1, "mLastNotified"    # J

    .line 74
    iput-wide p1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    .line 75
    return-object p0
.end method

.method public greylist-max-o setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;
    .registers 2
    .param p1, "mPkg"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/service/notification/NotifyingApp;
    .registers 2
    .param p1, "mUserId"    # I

    .line 50
    iput p1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    .line 51
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyingApp{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
