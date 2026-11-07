.class public Landroid/icu/text/TimeZoneNames$MatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchInfo"
.end annotation


# instance fields
.field private greylist-max-o _matchLength:I

.field private greylist-max-o _mzID:Ljava/lang/String;

.field private greylist-max-o _nameType:Landroid/icu/text/TimeZoneNames$NameType;

.field private greylist-max-o _tzID:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "nameType"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p2, "tzID"    # Ljava/lang/String;
    .param p3, "mzID"    # Ljava/lang/String;
    .param p4, "matchLength"    # I

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    if-eqz p1, :cond_25

    .line 349
    if-nez p2, :cond_12

    if-eqz p3, :cond_a

    goto :goto_12

    .line 350
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either tzID or mzID must be available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_12
    :goto_12
    if-lez p4, :cond_1d

    .line 355
    iput-object p1, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    .line 356
    iput-object p2, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    .line 357
    iput-object p3, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    .line 358
    iput p4, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    .line 359
    return-void

    .line 353
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matchLength must be positive value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nameType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o matchLength()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return v0
.end method

.method public greylist-max-o mzID()Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o nameType()Landroid/icu/text/TimeZoneNames$NameType;
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public greylist-max-o tzID()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    return-object v0
.end method
