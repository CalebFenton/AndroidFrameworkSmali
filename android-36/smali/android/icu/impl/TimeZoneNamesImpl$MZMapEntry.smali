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
.field private blacklist _from:J

.field private blacklist _mzID:Ljava/lang/String;

.field private blacklist _to:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "from"    # J
    .param p4, "to"    # J

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    .line 836
    iput-wide p2, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    .line 837
    iput-wide p4, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    .line 838
    return-void
.end method


# virtual methods
.method blacklist from()J
    .registers 3

    .line 845
    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_from:J

    return-wide v0
.end method

.method blacklist mzID()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method blacklist to()J
    .registers 3

    .line 849
    iget-wide v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->_to:J

    return-wide v0
.end method
