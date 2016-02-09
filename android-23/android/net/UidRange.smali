.class public final Landroid/net/UidRange;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UidRange$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/net/UidRange$1;

    #@2
    invoke-direct {v0}, Landroid/net/UidRange$1;-><init>()V

    #@5
    .line 88
    sput-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "startUid"    # I
    .param p2, "stopUid"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    if-gez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Invalid start UID."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 37
    :cond_0
    if-gez p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Invalid stop UID."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 38
    :cond_1
    if-le p1, p2, :cond_2

    #@1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "Invalid UID range."

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 39
    :cond_2
    iput p1, p0, Landroid/net/UidRange;->start:I

    #@26
    .line 40
    iput p2, p0, Landroid/net/UidRange;->stop:I

    #@28
    .line 35
    return-void
.end method

.method public static createForUser(I)Landroid/net/UidRange;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    const v3, 0x186a0

    #@3
    .line 44
    new-instance v0, Landroid/net/UidRange;

    #@5
    mul-int v1, p0, v3

    #@7
    add-int/lit8 v2, p0, 0x1

    #@9
    mul-int/2addr v2, v3

    #@a
    add-int/lit8 v2, v2, -0x1

    #@c
    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    #@f
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 61
    if-ne p0, p1, :cond_0

    #@4
    .line 62
    return v1

    #@5
    .line 64
    :cond_0
    instance-of v3, p1, Landroid/net/UidRange;

    #@7
    if-eqz v3, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 65
    check-cast v0, Landroid/net/UidRange;

    #@c
    .line 66
    .local v0, "other":Landroid/net/UidRange;
    iget v3, p0, Landroid/net/UidRange;->start:I

    #@e
    iget v4, v0, Landroid/net/UidRange;->start:I

    #@10
    if-ne v3, v4, :cond_1

    #@12
    iget v3, p0, Landroid/net/UidRange;->stop:I

    #@14
    iget v4, v0, Landroid/net/UidRange;->stop:I

    #@16
    if-ne v3, v4, :cond_1

    #@18
    :goto_0
    return v1

    #@19
    :cond_1
    move v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 68
    .end local v0    # "other":Landroid/net/UidRange;
    :cond_2
    return v2
.end method

.method public getStartUser()I
    .locals 2

    #@0
    .prologue
    .line 48
    iget v0, p0, Landroid/net/UidRange;->start:I

    #@2
    const v1, 0x186a0

    #@5
    div-int/2addr v0, v1

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 54
    iget v1, p0, Landroid/net/UidRange;->start:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 55
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Landroid/net/UidRange;->stop:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 56
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroid/net/UidRange;->start:I

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "-"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Landroid/net/UidRange;->stop:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid/net/UidRange;->start:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 85
    iget v0, p0, Landroid/net/UidRange;->stop:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 83
    return-void
.end method
