.class public final Lcom/android/internal/app/procstats/AssociationState$SourceKey;
.super Ljava/lang/Object;
.source "AssociationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceKey"
.end annotation


# instance fields
.field blacklist mPackage:Ljava/lang/String;

.field blacklist mProcess:Ljava/lang/String;

.field blacklist mUid:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    .line 507
    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 508
    iput-object p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 509
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "in"    # Landroid/os/Parcel;
    .param p3, "parcelVersion"    # I

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    .line 513
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 514
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 515
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 524
    instance-of v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 525
    return v1

    .line 527
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 528
    .local v0, "s":Lcom/android/internal/app/procstats/AssociationState$SourceKey;
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    if-ne v2, v3, :cond_25

    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 529
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 528
    :goto_26
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 534
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    xor-int/2addr v0, v1

    .line 535
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_19

    goto :goto_21

    :cond_19
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v1, 0x21

    :goto_21
    xor-int/2addr v0, v2

    .line 534
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SourceKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 543
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "out"    # Landroid/os/Parcel;

    .line 518
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 521
    return-void
.end method
