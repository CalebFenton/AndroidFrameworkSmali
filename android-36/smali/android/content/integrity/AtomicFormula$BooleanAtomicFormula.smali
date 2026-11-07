.class public final Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanAtomicFormula"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mValue:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 573
    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "key"    # I

    .line 542
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 543
    const/4 v0, 0x5

    if-eq p1, v0, :cond_c

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 546
    :goto_d
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 545
    const-string v2, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    .line 548
    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .line 559
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 560
    const/4 v0, 0x5

    if-eq p1, v0, :cond_c

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 563
    :goto_d
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 562
    const-string v2, "Key %s cannot be used with BooleanAtomicFormula"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 564
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    .line 565
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    .line 570
    return-void
.end method

.method private static blacklist getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z
    .registers 5
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "key"    # I

    .line 659
    packed-switch p1, :pswitch_data_26

    .line 665
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in BooleanAtomicFormula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :pswitch_1c
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isStampTrusted()Z

    move-result v0

    return v0

    .line 661
    :pswitch_21
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->isPreInstalled()Z

    move-result v0

    return v0

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 624
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 625
    return v0

    .line 627
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 630
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    .line 631
    .local v2, "that":Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 628
    .end local v2    # "that":Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getTag()I
    .registers 2

    .line 588
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Boolean;
    .registers 2

    .line 654
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 636
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .registers 2

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .registers 2

    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .registers 2

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 5
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 593
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 594
    return v1

    .line 596
    :cond_6
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getBooleanMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)Z

    move-result v0

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 616
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 617
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 619
    :cond_17
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 646
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 649
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->mValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 651
    return-void

    .line 647
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty BooleanAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
