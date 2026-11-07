.class public final Landroid/os/WorkSource$WorkChain;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WorkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkChain"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mTags:[Ljava/lang/String;

.field private greylist-max-o mUids:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1096
    new-instance v0, Landroid/os/WorkSource$WorkChain$1;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource$WorkChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 964
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 965
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 966
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 980
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WorkSource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/WorkSource$WorkChain;)V
    .registers 3
    .param p1, "other"    # Landroid/os/WorkSource$WorkChain;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iget v0, p1, Landroid/os/WorkSource$WorkChain;->mSize:I

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 972
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 973
    iget-object v0, p1, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 974
    return-void
.end method

.method private greylist-max-o resizeArrays()V
    .registers 7

    .line 1034
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 1035
    .local v0, "newSize":I
    new-array v1, v0, [I

    .line 1036
    .local v1, "uids":[I
    new-array v2, v0, [Ljava/lang/String;

    .line 1038
    .local v2, "tags":[Ljava/lang/String;
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v4, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1039
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v4, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    iput-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 1042
    iput-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 1043
    return-void
.end method


# virtual methods
.method public whitelist addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 987
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 988
    invoke-direct {p0}, Landroid/os/WorkSource$WorkChain;->resizeArrays()V

    .line 991
    :cond_a
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    aput p1, v0, v1

    .line 992
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget v1, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    aput-object p2, v0, v1

    .line 993
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    .line 995
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1073
    instance-of v0, p1, Landroid/os/WorkSource$WorkChain;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1074
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 1076
    .local v0, "other":Landroid/os/WorkSource$WorkChain;
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget v3, v0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    .line 1077
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    iget-object v3, v0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    .line 1078
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 1076
    :goto_25
    return v1

    .line 1081
    .end local v0    # "other":Landroid/os/WorkSource$WorkChain;
    :cond_26
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 3

    .line 1011
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getAttributionUid()I
    .registers 3

    .line 1003
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0
.end method

.method public greylist-max-o getSize()I
    .registers 2

    .line 1030
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    return v0
.end method

.method public greylist-max-o getTags()[Ljava/lang/String;
    .registers 5

    .line 1023
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 1024
    .local v0, "tags":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1025
    return-object v0
.end method

.method public greylist-max-o getUids()[I
    .registers 5

    .line 1016
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    new-array v0, v0, [I

    .line 1017
    .local v0, "uids":[I
    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1068
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkChain{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    if-ge v1, v2, :cond_37

    .line 1050
    const-string v2, ", "

    if-eqz v1, :cond_13

    .line 1051
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_13
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1055
    iget-object v3, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2f

    .line 1056
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    iget-object v2, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_2f
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1062
    .end local v1    # "i":I
    :cond_37
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1091
    iget v0, p0, Landroid/os/WorkSource$WorkChain;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1093
    iget-object v0, p0, Landroid/os/WorkSource$WorkChain;->mTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1094
    return-void
.end method
