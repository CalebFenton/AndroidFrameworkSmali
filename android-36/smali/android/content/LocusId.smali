.class public final Landroid/content/LocusId;
.super Ljava/lang/Object;
.source "LocusId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/content/LocusId$1;

    invoke-direct {v0}, Landroid/content/LocusId$1;-><init>()V

    sput-object v0, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string/jumbo v0, "id cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private blacklist getSanitizedId()Ljava/lang/String;
    .registers 4

    .line 124
    iget-object v0, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 119
    const-string/jumbo v0, "id:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/LocusId;->getSanitizedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 101
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 102
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 103
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/content/LocusId;

    .line 104
    .local v2, "other":Landroid/content/LocusId;
    iget-object v3, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 105
    iget-object v3, v2, Landroid/content/LocusId;->mId:Ljava/lang/String;

    if-eqz v3, :cond_2a

    return v1

    .line 107
    :cond_1f
    iget-object v3, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/LocusId;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    return v1

    .line 109
    :cond_2a
    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 92
    const/16 v0, 0x1f

    .line 93
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 94
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 95
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocusId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/content/LocusId;->getSanitizedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Landroid/content/LocusId;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void
.end method
