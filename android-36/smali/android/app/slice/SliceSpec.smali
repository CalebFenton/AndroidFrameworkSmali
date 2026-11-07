.class public final Landroid/app/slice/SliceSpec;
.super Ljava/lang/Object;
.source "SliceSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mRevision:I

.field private final greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/app/slice/SliceSpec$1;

    invoke-direct {v0}, Landroid/app/slice/SliceSpec$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "revision"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 54
    iput p2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist canRender(Landroid/app/slice/SliceSpec;)Z
    .registers 5
    .param p1, "candidate"    # Landroid/app/slice/SliceSpec;

    .line 101
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 102
    :cond_c
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v2, p1, Landroid/app/slice/SliceSpec;->mRevision:I

    if-lt v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    instance-of v0, p1, Landroid/app/slice/SliceSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 108
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/slice/SliceSpec;

    .line 109
    .local v0, "other":Landroid/app/slice/SliceSpec;
    iget-object v2, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v3, v0, Landroid/app/slice/SliceSpec;->mRevision:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public whitelist getRevision()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget v1, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SliceSpec{%s,%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
