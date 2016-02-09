.class Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MZMapEntry"
.end annotation


# instance fields
.field private _from:J

.field private _mzID:Ljava/lang/String;

.field private _to:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "from"    # J
    .param p4, "to"    # J

    #@0
    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 562
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    #@5
    .line 563
    iput-wide p2, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    #@7
    .line 564
    iput-wide p4, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    #@9
    .line 561
    return-void
.end method


# virtual methods
.method from()J
    .locals 2

    #@0
    .prologue
    .line 572
    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    #@2
    return-wide v0
.end method

.method mzID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method to()J
    .locals 2

    #@0
    .prologue
    .line 576
    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    #@2
    return-wide v0
.end method
