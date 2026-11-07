.class public final Landroid/hardware/radio/ProgramSelector$Identifier;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identifier"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mType:I

.field private final greylist-max-o mValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 847
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramSelector$Identifier$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_8

    .line 759
    const/4 p1, 0x4

    .line 761
    :cond_8
    iput p1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    .line 762
    iput-wide p2, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    .line 763
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    .line 834
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 825
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 826
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 827
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 828
    .local v1, "other":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    iget v4, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    if-ne v3, v4, :cond_20

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist getType()I
    .registers 5

    .line 771
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 776
    const/16 v0, 0x2714

    return v0

    .line 778
    :cond_10
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    return v0
.end method

.method public whitelist getValue()J
    .registers 3

    .line 809
    iget-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 820
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCategoryType()Z
    .registers 3

    .line 790
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/16 v1, 0x7cf

    if-le v0, v1, :cond_11

    :cond_c
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identifier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 838
    iget v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget-wide v0, p0, Landroid/hardware/radio/ProgramSelector$Identifier;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 840
    return-void
.end method
