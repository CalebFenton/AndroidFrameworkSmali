.class public final Landroid/service/autofill/FieldClassification;
.super Ljava/lang/Object;
.source "FieldClassification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FieldClassification$Match;
    }
.end annotation


# instance fields
.field private final greylist-max-o mMatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    new-instance v1, Landroid/service/autofill/FieldClassification$1;

    invoke-direct {v1, p0}, Landroid/service/autofill/FieldClassification$1;-><init>(Landroid/service/autofill/FieldClassification;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    return-void
.end method

.method static greylist-max-o readArrayFromParcel(Landroid/os/Parcel;)[Landroid/service/autofill/FieldClassification;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "length":I
    new-array v1, v0, [Landroid/service/autofill/FieldClassification;

    .line 92
    .local v1, "fcs":[Landroid/service/autofill/FieldClassification;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 93
    invoke-static {p0}, Landroid/service/autofill/FieldClassification;->readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification;

    move-result-object v3

    aput-object v3, v1, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 95
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

.method private static greylist-max-o readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_16

    .line 83
    invoke-static {p0}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 86
    .end local v2    # "i":I
    :cond_16
    new-instance v2, Landroid/service/autofill/FieldClassification;

    invoke-direct {v2, v1}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method static greylist-max-o writeArrayToParcel(Landroid/os/Parcel;[Landroid/service/autofill/FieldClassification;)V
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "fcs"    # [Landroid/service/autofill/FieldClassification;

    .line 99
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 101
    aget-object v1, p1, v0

    invoke-direct {v1, p0}, Landroid/service/autofill/FieldClassification;->writeToParcel(Landroid/os/Parcel;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 103
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 73
    iget-object v0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 75
    iget-object v1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FieldClassification$Match;

    invoke-static {v1, p1}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$mwriteToParcel(Landroid/service/autofill/FieldClassification$Match;Landroid/os/Parcel;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 77
    .end local v0    # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method public whitelist getMatches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 67
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldClassification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
