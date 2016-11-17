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
.field private _matchLength:I

.field private _mzID:Ljava/lang/String;

.field private _nameType:Landroid/icu/text/TimeZoneNames$NameType;

.field private _tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "nameType"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p2, "tzID"    # Ljava/lang/String;
    .param p3, "mzID"    # Ljava/lang/String;
    .param p4, "matchLength"    # I

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 343
    if-nez p1, :cond_0

    #@5
    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "nameType is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 346
    :cond_0
    if-nez p2, :cond_1

    #@10
    if-nez p3, :cond_1

    #@12
    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Either tzID or mzID must be available"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 349
    :cond_1
    if-gtz p4, :cond_2

    #@1d
    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "matchLength must be positive value"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 352
    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    #@28
    .line 353
    iput-object p2, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    #@2a
    .line 354
    iput-object p3, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    #@2c
    .line 355
    iput p4, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    #@2e
    .line 342
    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    #@0
    .prologue
    .line 402
    iget v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    #@2
    return v0
.end method

.method public mzID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public nameType()Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    #@2
    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    #@2
    return-object v0
.end method
