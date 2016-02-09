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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public breadCrumbShortTitleRes:I

.field public breadCrumbTitle:Ljava/lang/CharSequence;

.field public breadCrumbTitleRes:I

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 524
    new-instance v0, Landroid/preference/PreferenceActivity$Header$1;

    #@2
    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header$1;-><init>()V

    #@5
    sput-object v0, Landroid/preference/PreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 330
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 337
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    #@7
    .line 420
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 337
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    #@7
    .line 521
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    #@a
    .line 520
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 467
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 468
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 470
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 454
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 455
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 457
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 442
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 443
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 445
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 430
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 431
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 433
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    #@6
    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@c
    .line 504
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/CharSequence;

    #@14
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@16
    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    #@1c
    .line 506
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/CharSequence;

    #@24
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    #@26
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@2c
    .line 508
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/CharSequence;

    #@34
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    #@36
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@3c
    .line 510
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/lang/CharSequence;

    #@44
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    #@46
    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    iput v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@4c
    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@52
    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@58
    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 515
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/content/Intent;

    #@66
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@68
    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6b
    move-result-object v0

    #@6c
    iput-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    #@6e
    .line 501
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 480
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 481
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 482
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@c
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@f
    .line 483
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 484
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    #@16
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@19
    .line 485
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 486
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    #@20
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@23
    .line 487
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 488
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    #@2a
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2d
    .line 489
    iget v0, p0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 490
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 491
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3c
    .line 492
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 493
    const/4 v0, 0x1

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 494
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@46
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@49
    .line 498
    :goto_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@4e
    .line 479
    return-void

    #@4f
    .line 496
    :cond_0
    const/4 v0, 0x0

    #@50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    goto :goto_0
.end method
