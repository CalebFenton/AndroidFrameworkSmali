.class public final Landroid/net/UidRange;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o start:I

.field public final greylist-max-o stop:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Landroid/net/UidRange$1;

    invoke-direct {v0}, Landroid/net/UidRange$1;-><init>()V

    sput-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 5
    .param p1, "startUid"    # I
    .param p2, "stopUid"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-ltz p1, :cond_1e

    .line 40
    if-ltz p2, :cond_16

    .line 41
    if-gt p1, p2, :cond_e

    .line 42
    iput p1, p0, Landroid/net/UidRange;->start:I

    .line 43
    iput p2, p0, Landroid/net/UidRange;->stop:I

    .line 44
    return-void

    .line 41
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UID range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stop UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist containsUid(Ljava/util/Collection;I)Z
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/UidRange;",
            ">;I)Z"
        }
    .end annotation

    .line 147
    .local p0, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 148
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 149
    .local v2, "range":Landroid/net/UidRange;
    invoke-virtual {v2, p1}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    .end local v2    # "range":Landroid/net/UidRange;
    :cond_1c
    goto :goto_8

    .line 153
    :cond_1d
    return v0
.end method

.method public static blacklist createForUser(Landroid/os/UserHandle;)Landroid/net/UidRange;
    .registers 5
    .param p0, "user"    # Landroid/os/UserHandle;

    .line 48
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 49
    .local v0, "nextUser":Landroid/os/UserHandle;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/UserHandle;->getUid(I)I

    move-result v2

    .line 50
    .local v2, "start":I
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->getUid(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 51
    .local v1, "end":I
    new-instance v3, Landroid/net/UidRange;

    invoke-direct {v3, v2, v1}, Landroid/net/UidRange;-><init>(II)V

    return-object v3
.end method

.method public static blacklist fromIntRanges(Ljava/util/Set;)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/util/ArraySet<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 161
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 164
    .local v0, "uids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/UidRange;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 165
    .local v2, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/net/UidRange;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/net/UidRange;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_d

    .line 167
    :cond_36
    return-object v0
.end method

.method public static blacklist hasSameUids(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .line 191
    .local p0, "uids1":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p1, "uids2":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 192
    :cond_7
    if-nez p1, :cond_a

    return v0

    .line 194
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v1, "remainingUids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/UidRange;

    .line 196
    .local v3, "range":Landroid/net/UidRange;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 197
    return v0

    .line 199
    :cond_26
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    .end local v3    # "range":Landroid/net/UidRange;
    goto :goto_13

    .line 201
    :cond_2a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static blacklist toIntRanges(Ljava/util/Set;)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 175
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 178
    .local v0, "uids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 179
    .local v2, "range":Landroid/net/UidRange;
    new-instance v3, Landroid/util/Range;

    iget v4, v2, Landroid/net/UidRange;->start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/net/UidRange;->stop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v2    # "range":Landroid/net/UidRange;
    goto :goto_d

    .line 181
    :cond_2e
    return-object v0
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 66
    iget v0, p0, Landroid/net/UidRange;->start:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/net/UidRange;->stop:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o containsRange(Landroid/net/UidRange;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/UidRange;

    .line 80
    iget v0, p0, Landroid/net/UidRange;->start:I

    iget v1, p1, Landroid/net/UidRange;->start:I

    if-gt v0, v1, :cond_e

    iget v0, p1, Landroid/net/UidRange;->stop:I

    iget v1, p0, Landroid/net/UidRange;->stop:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o count()I
    .registers 3

    .line 73
    iget v0, p0, Landroid/net/UidRange;->stop:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/net/UidRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroid/net/UidRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 97
    move-object v1, p1

    check-cast v1, Landroid/net/UidRange;

    .line 98
    .local v1, "other":Landroid/net/UidRange;
    iget v3, p0, Landroid/net/UidRange;->start:I

    iget v4, v1, Landroid/net/UidRange;->start:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Landroid/net/UidRange;->stop:I

    iget v4, v1, Landroid/net/UidRange;->stop:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 100
    .end local v1    # "other":Landroid/net/UidRange;
    :cond_1b
    return v2
.end method

.method public blacklist getEndUser()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/UidRange;->stop:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getStartUser()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/net/UidRange;->start:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 85
    const/16 v0, 0x11

    .line 86
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/UidRange;->start:I

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/net/UidRange;->stop:I

    add-int/2addr v0, v2

    .line 88
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
