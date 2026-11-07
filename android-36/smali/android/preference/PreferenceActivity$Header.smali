.class public final Landroid/preference/PreferenceActivity$Header;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public whitelist breadCrumbShortTitleRes:I

.field public whitelist breadCrumbTitle:Ljava/lang/CharSequence;

.field public whitelist breadCrumbTitleRes:I

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist fragment:Ljava/lang/String;

.field public whitelist fragmentArguments:Landroid/os/Bundle;

.field public whitelist iconRes:I

.field public whitelist id:J

.field public whitelist intent:Landroid/content/Intent;

.field public whitelist summary:Ljava/lang/CharSequence;

.field public whitelist summaryRes:I

.field public whitelist title:Ljava/lang/CharSequence;

.field public whitelist titleRes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 531
    new-instance v0, Landroid/preference/PreferenceActivity$Header$1;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header$1;-><init>()V

    sput-object v0, Landroid/preference/PreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 429
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 528
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 529
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 474
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-eqz v0, :cond_b

    .line 475
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 477
    :cond_b
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 461
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    if-eqz v0, :cond_b

    .line 462
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 464
    :cond_b
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 449
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_b

    .line 450
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 452
    :cond_b
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 437
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_b

    .line 438
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 440
    :cond_b
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 511
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 513
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 515
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 517
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    .line 522
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 524
    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 525
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 487
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 488
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 490
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 492
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 494
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 496
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 499
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_4a

    .line 500
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4e

    .line 503
    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    :goto_4e
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 506
    return-void
.end method
