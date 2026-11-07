.class public final Landroid/hardware/radio/ProgramList$Chunk;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chunk"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mComplete:Z

.field private final greylist-max-o mModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPurge:Z

.field private final greylist-max-o mRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 553
    new-instance v0, Landroid/hardware/radio/ProgramList$Chunk$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Chunk$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 536
    sget-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 537
    sget-object v0, Landroid/hardware/radio/UniqueProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 538
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(ZZLjava/util/Set;Ljava/util/Set;)V
    .registers 6
    .param p1, "purge"    # Z
    .param p2, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p3, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .local p4, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/UniqueProgramIdentifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-boolean p1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    .line 528
    iput-boolean p2, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    .line 529
    if-eqz p3, :cond_b

    move-object v0, p3

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    .line 530
    if-eqz p4, :cond_15

    move-object v0, p4

    goto :goto_19

    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    .line 531
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 581
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 582
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 583
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 585
    .local v1, "other":Landroid/hardware/radio/ProgramList$Chunk;
    iget-boolean v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    iget-boolean v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    if-eq v3, v4, :cond_14

    return v2

    .line 586
    :cond_14
    iget-boolean v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    iget-boolean v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    if-eq v3, v4, :cond_1b

    return v2

    .line 587
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    iget-object v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    .line 588
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    iget-object v4, v1, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v2

    .line 589
    :cond_31
    return v0
.end method

.method public greylist-max-o getModified()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o getRemoved()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o isComplete()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    return v0
.end method

.method public greylist-max-o isPurge()Z
    .registers 2

    .line 564
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk [mPurge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 542
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mPurge:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 543
    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mComplete:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 544
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mModified:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 545
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Chunk;->mRemoved:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 546
    return-void
.end method
