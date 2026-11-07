.class public final Landroid/hardware/radio/UniqueProgramIdentifier;
.super Ljava/lang/Object;
.source "UniqueProgramIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final blacklist mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 153
    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/radio/UniqueProgramIdentifier$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/UniqueProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 3
    .param p1, "primaryId"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector;)V
    .registers 9
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "Program selector can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 57
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_74

    .line 89
    new-array v0, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    goto :goto_73

    .line 60
    :sswitch_1d
    const/4 v0, 0x0

    .line 61
    .local v0, "ensembleId":Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v2, 0x0

    .line 62
    .local v2, "frequencyId":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    .line 63
    .local v3, "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, v3

    if-ge v4, v5, :cond_4f

    .line 64
    if-nez v0, :cond_39

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_39

    .line 66
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v5

    aget-object v0, v5, v4

    goto :goto_47

    .line 67
    :cond_39
    if-nez v2, :cond_47

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_47

    .line 69
    aget-object v2, v3, v4

    .line 71
    :cond_47
    :goto_47
    if-eqz v0, :cond_4c

    if-eqz v2, :cond_4c

    .line 72
    goto :goto_4f

    .line 63
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 75
    .end local v4    # "i":I
    :cond_4f
    :goto_4f
    const/4 v4, 0x1

    if-nez v0, :cond_60

    .line 76
    if-nez v2, :cond_59

    .line 77
    new-array v1, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    goto :goto_73

    .line 79
    :cond_59
    new-array v4, v4, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v2, v4, v1

    iput-object v4, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    goto :goto_73

    .line 81
    :cond_60
    if-nez v2, :cond_69

    .line 82
    new-array v4, v4, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v0, v4, v1

    iput-object v4, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    goto :goto_73

    .line 84
    :cond_69
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v0, v5, v1

    aput-object v2, v5, v4

    iput-object v5, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 87
    nop

    .line 92
    .end local v0    # "ensembleId":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v2    # "frequencyId":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v3    # "secondaryIds":[Landroid/hardware/radio/ProgramSelector$Identifier;
    :goto_73
    return-void

    :sswitch_data_74
    .sparse-switch
        0x5 -> :sswitch_1d
        0xe -> :sswitch_1d
    .end sparse-switch
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 139
    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/UniqueProgramIdentifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist requireCriticalSecondaryIds(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 50
    const/16 v0, 0xe

    if-eq p0, v0, :cond_a

    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/UniqueProgramIdentifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 127
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 128
    .local v1, "other":Landroid/hardware/radio/UniqueProgramIdentifier;
    iget-object v3, v1, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v3, v4}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v4, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 129
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 128
    :goto_23
    return v0
.end method

.method public blacklist getCriticalSecondaryIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 120
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniqueProgramIdentifier(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, ", criticalSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/UniqueProgramIdentifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/radio/UniqueProgramIdentifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 150
    return-void

    .line 147
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criticalSecondaryIds list must not contain nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
