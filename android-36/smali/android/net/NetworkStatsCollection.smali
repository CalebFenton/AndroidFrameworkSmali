.class public Landroid/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;
.implements Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsCollection$Key;,
        Landroid/net/NetworkStatsCollection$Builder;
    }
.end annotation


# static fields
.field private static final blacklist FILE_MAGIC:I = 0x414e4554

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VERSION_NETWORK_INIT:I = 0x1

.field private static final blacklist VERSION_UID_INIT:I = 0x1

.field private static final blacklist VERSION_UID_WITH_IDENT:I = 0x2

.field private static final blacklist VERSION_UID_WITH_SET:I = 0x4

.field private static final blacklist VERSION_UID_WITH_TAG:I = 0x3

.field private static final blacklist VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final blacklist mBucketDurationMillis:J

.field private blacklist mDirty:Z

.field private blacklist mEndMillis:J

.field private blacklist mStartMillis:J

.field private blacklist mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalBytes:J

.field private final blacklist mUseFastDataInput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 99
    const-class v0, Landroid/net/NetworkStatsCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkStatsCollection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "bucketDurationMillis"    # J

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/NetworkStatsCollection;-><init>(JZ)V

    .line 130
    return-void
.end method

.method public constructor blacklist <init>(JZ)V
    .registers 5
    .param p1, "bucketDurationMillis"    # J
    .param p3, "useFastDataInput"    # Z

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    .line 140
    iput-wide p1, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    .line 141
    iput-boolean p3, p0, Landroid/net/NetworkStatsCollection;->mUseFastDataInput:Z

    .line 142
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->reset()V

    .line 143
    return-void
.end method

.method public static blacklist compareStats(Landroid/net/NetworkStatsCollection;Landroid/net/NetworkStatsCollection;Z)Ljava/lang/String;
    .registers 13
    .param p0, "migrated"    # Landroid/net/NetworkStatsCollection;
    .param p1, "legacy"    # Landroid/net/NetworkStatsCollection;
    .param p2, "allowKeyChange"    # Z

    .line 990
    nop

    .line 991
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 992
    .local v0, "migEntries":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getEntries()Ljava/util/Map;

    move-result-object v1

    .line 994
    .local v1, "legEntries":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    new-instance v2, Landroid/util/ArraySet;

    .line 995
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 997
    .local v2, "unmatchedLegKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/NetworkStatsCollection$Key;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsCollection$Key;

    .line 998
    .local v4, "legKey":Landroid/net/NetworkStatsCollection$Key;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 999
    .local v5, "legHistory":Landroid/net/NetworkStatsHistory;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 1001
    .local v6, "migHistory":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_40

    if-eqz p2, :cond_40

    invoke-static {v4}, Landroid/net/NetworkStatsCollection;->couldKeyChangeOnImport(Landroid/net/NetworkStatsCollection$Key;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1002
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1003
    goto :goto_1a

    .line 1006
    :cond_40
    if-nez v6, :cond_64

    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing migrated history for legacy key "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Landroid/net/NetworkStatsCollection;->str(Landroid/net/NetworkStatsCollection$Key;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", legacy history was "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1010
    :cond_64
    invoke-virtual {v6, v5}, Landroid/net/NetworkStatsHistory;->isSameAs(Landroid/net/NetworkStatsHistory;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Difference in history for key "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "; legacy history "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", migrated history "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1014
    :cond_92
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1015
    .end local v4    # "legKey":Landroid/net/NetworkStatsCollection$Key;
    .end local v5    # "legHistory":Landroid/net/NetworkStatsHistory;
    .end local v6    # "migHistory":Landroid/net/NetworkStatsHistory;
    goto :goto_1a

    .line 1017
    :cond_96
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 1018
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 1019
    .local v3, "first":Landroid/net/NetworkStatsHistory;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found unmatched legacy keys: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first unmatched collection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1023
    .end local v3    # "first":Landroid/net/NetworkStatsHistory;
    :cond_c9
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const-string v4, " and "

    const-string v5, "/"

    if-nez v3, :cond_132

    .line 1024
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_e6

    goto :goto_132

    .line 1031
    :cond_e6
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_130

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total bytes "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getTotalBytes()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " don\'t match for collections with start/end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1034
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1035
    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    return-object v3

    .line 1038
    :cond_130
    const/4 v3, 0x0

    return-object v3

    .line 1025
    :cond_132
    :goto_132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start / end of the collections "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1026
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getStartMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1027
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkStatsCollection;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " don\'t match"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1025
    return-object v3
.end method

.method private static blacklist couldKeyChangeOnImport(Landroid/net/NetworkStatsCollection$Key;)Z
    .registers 5
    .param p0, "key"    # Landroid/net/NetworkStatsCollection$Key;

    .line 966
    iget-object v0, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 967
    :cond_a
    iget-object v0, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 973
    .local v0, "firstIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    if-eqz v2, :cond_25

    .line 974
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRatType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 975
    const/4 v1, 0x1

    return v1

    .line 978
    :cond_25
    return v1
.end method

.method private blacklist dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .line 817
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 820
    .local v0, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5e

    .line 821
    iget-object v2, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 822
    .local v2, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v3, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/net/NetworkStatsHistory;

    .line 824
    .local v5, "value":Landroid/net/NetworkStatsHistory;
    iget-object v3, v2, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    move-object/from16 v10, p6

    invoke-static {v10, v3}, Landroid/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Landroid/net/connectivity/android/net/NetworkIdentitySet;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_5b

    .line 825
    :cond_2a
    iget v3, v2, Landroid/net/NetworkStatsCollection$Key;->set:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_31

    goto :goto_5b

    .line 827
    :cond_31
    new-instance v3, Landroid/net/NetworkStatsCollection$Key;

    new-instance v4, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-direct {v4}, Landroid/net/connectivity/android/net/NetworkIdentitySet;-><init>()V

    iget v6, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    iget v7, v2, Landroid/net/NetworkStatsCollection$Key;->set:I

    iget v8, v2, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 828
    .local v3, "groupKey":Landroid/net/NetworkStatsCollection$Key;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 829
    .local v4, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v4, :cond_56

    .line 830
    new-instance v6, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v4, v6

    .line 831
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_56
    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 820
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v3    # "groupKey":Landroid/net/NetworkStatsCollection$Key;
    .end local v4    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .end local v5    # "value":Landroid/net/NetworkStatsHistory;
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5e
    move-object/from16 v10, p6

    .line 836
    .end local v1    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_61
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_ad

    .line 837
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 838
    .restart local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 840
    .local v3, "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_7c

    move-object/from16 v4, p7

    goto :goto_aa

    .line 842
    :cond_7c
    const-string v4, "c,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    move-object/from16 v4, p7

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 844
    iget v6, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 845
    iget v6, v2, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v6}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 846
    iget v5, v2, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 847
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 849
    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    .line 836
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_ad
    move-object/from16 v4, p7

    .line 851
    .end local v1    # "i":I
    return-void
.end method

.method private blacklist estimateBuckets()I
    .registers 5

    .line 751
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private blacklist findOrCreateHistory(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .registers 12
    .param p1, "ident"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .line 478
    new-instance v0, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 479
    .local v0, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 482
    .local v1, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 483
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v1, :cond_1b

    .line 484
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    move-object v2, v3

    goto :goto_2d

    .line 485
    :cond_1b
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    .line 486
    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    invoke-direct {v3, v1, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    move-object v2, v3

    .line 489
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_35

    .line 490
    iget-object v3, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-object v2

    .line 493
    :cond_35
    return-object v1
.end method

.method private blacklist getSortedKeys()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 758
    new-instance v1, Landroid/net/NetworkStatsCollection$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/NetworkStatsCollection$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 759
    return-object v0
.end method

.method static synthetic blacklist lambda$getSortedKeys$0(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsCollection$Key;)I
    .registers 3
    .param p0, "left"    # Landroid/net/NetworkStatsCollection$Key;
    .param p1, "right"    # Landroid/net/NetworkStatsCollection$Key;

    .line 758
    invoke-static {p0, p1}, Landroid/net/NetworkStatsCollection$Key;->compare(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsCollection$Key;)I

    move-result v0

    return v0
.end method

.method private blacklist noteRecordedHistory(JJJ)V
    .registers 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .line 744
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    iput-wide p1, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    .line 745
    :cond_8
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    iput-wide p3, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    .line 746
    :cond_10
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Landroid/net/NetworkStatsCollection;->mTotalBytes:J

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    .line 748
    return-void
.end method

.method private blacklist read(Ljava/io/DataInput;)V
    .registers 14
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 510
    .local v0, "magic":I
    const v1, 0x414e4554

    if-ne v0, v1, :cond_5d

    .line 514
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 515
    .local v1, "version":I
    packed-switch v1, :pswitch_data_76

    .line 536
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :pswitch_29
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 519
    .local v2, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_5b

    .line 520
    new-instance v4, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-direct {v4, p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 522
    .local v4, "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 523
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3a
    if-ge v6, v5, :cond_58

    .line 524
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 525
    .local v7, "uid":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 526
    .local v8, "set":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 528
    .local v9, "tag":I
    new-instance v10, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 529
    .local v10, "key":Landroid/net/NetworkStatsCollection$Key;
    new-instance v11, Landroid/net/NetworkStatsHistory;

    invoke-direct {v11, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V

    .line 530
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p0, v10, v11}, Landroid/net/NetworkStatsCollection;->recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 523
    .end local v7    # "uid":I
    .end local v8    # "set":I
    .end local v9    # "tag":I
    .end local v10    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v11    # "history":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 519
    .end local v4    # "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .end local v5    # "size":I
    .end local v6    # "j":I
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 533
    .end local v3    # "i":I
    :cond_5b
    nop

    .line 539
    .end local v2    # "identSize":I
    return-void

    .line 511
    .end local v1    # "version":I
    :cond_5d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_76
    .packed-switch 0x10
        :pswitch_29
    .end packed-switch
.end method

.method private static blacklist str(Landroid/net/NetworkStatsCollection$Key;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Landroid/net/NetworkStatsCollection$Key;

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 950
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 952
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->set:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    .line 953
    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    :cond_2b
    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    if-eqz v1, :cond_3a

    .line 956
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist templateMatches(Landroid/net/NetworkTemplate;Landroid/net/connectivity/android/net/NetworkIdentitySet;)Z
    .registers 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 858
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 859
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 860
    const/4 v0, 0x1

    return v0

    .line 862
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :cond_18
    goto :goto_4

    .line 863
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist write(Ljava/io/DataOutput;)V
    .registers 10
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 551
    .local v0, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/connectivity/android/net/NetworkIdentitySet;Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;>;"
    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 552
    .local v2, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v3, v2, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 553
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    if-nez v3, :cond_30

    .line 554
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 555
    iget-object v4, v2, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    goto :goto_f

    .line 560
    :cond_34
    const v1, 0x414e4554

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 561
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 563
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 564
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 565
    .local v2, "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 566
    .restart local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v2, p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutput;)V

    .line 568
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 569
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsCollection$Key;

    .line 570
    .local v5, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v6, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 571
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v5, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 572
    iget v7, v5, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 573
    iget v7, v5, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 574
    invoke-virtual {v6, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutput;)V

    .line 575
    .end local v5    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_6e

    .line 576
    .end local v2    # "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .end local v3    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    :cond_95
    goto :goto_4e

    .line 577
    :cond_96
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 1

    .line 147
    invoke-virtual {p0}, Landroid/net/NetworkStatsCollection;->reset()V

    .line 148
    return-void
.end method

.method public blacklist clearDirty()V
    .registers 2

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    .line 195
    return-void
.end method

.method public blacklist dump(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 764
    invoke-direct {p0}, Landroid/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsCollection$Key;

    .line 765
    .local v1, "key":Landroid/net/NetworkStatsCollection$Key;
    const-string v2, "ident="

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 766
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(I)V

    .line 767
    const-string v2, " set="

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 768
    const-string v2, " tag="

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 770
    iget-object v2, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 771
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 772
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Landroid/net/connectivity/android/util/IndentingPrintWriter;Z)V

    .line 773
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->decreaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 774
    .end local v1    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_8

    .line 775
    :cond_5b
    return-void
.end method

.method public blacklist dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 803
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 804
    invoke-virtual {v0, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 803
    const-string v8, "cell"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 805
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v15

    const-string v16, "wifi"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v16}, Landroid/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 806
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v15

    const-string v16, "eth"

    invoke-direct/range {v9 .. v16}, Landroid/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 807
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v15

    const-string v16, "bt"

    invoke-direct/range {v9 .. v16}, Landroid/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 808
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v15

    const-string v16, "proxy"

    invoke-direct/range {v9 .. v16}, Landroid/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 779
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 781
    .local v0, "start":J
    invoke-direct {p0}, Landroid/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsCollection$Key;

    .line 782
    .local v3, "key":Landroid/net/NetworkStatsCollection$Key;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 785
    .local v4, "startStats":J
    const-wide v6, 0x10b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 786
    .local v8, "startKey":J
    iget-object v10, v3, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v10, p1, v6, v7}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 787
    const-wide v6, 0x10500000002L

    iget v10, v3, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 788
    const-wide v6, 0x10500000003L

    iget v10, v3, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 789
    const-wide v6, 0x10500000004L

    iget v10, v3, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 790
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 793
    iget-object v6, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 794
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    const-wide v10, 0x10b00000002L

    invoke-virtual {v6, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 795
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 796
    .end local v3    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v4    # "startStats":J
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "startKey":J
    goto :goto_c

    .line 798
    :cond_64
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 799
    return-void
.end method

.method public blacklist getEndMillis()J
    .registers 3

    .line 179
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public blacklist getEntries()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation

    .line 873
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public blacklist getFirstAtomicBucketMillis()J
    .registers 5

    .line 170
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 171
    return-wide v2

    .line 173
    :cond_c
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .registers 58
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "augmentPlan"    # Landroid/telephony/SubscriptionPlan;
    .param p3, "uid"    # I
    .param p4, "set"    # I
    .param p5, "tag"    # I
    .param p6, "fields"    # I
    .param p7, "start"    # J
    .param p9, "end"    # J
    .param p11, "accessLevel"    # I
    .param p12, "callerUid"    # I

    .line 264
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v3, p12

    move/from16 v4, p11

    invoke-static {v1, v3, v4}, Landroid/net/connectivity/android/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v5

    if-eqz v5, :cond_240

    .line 271
    sub-long v5, p9, p7

    iget-wide v7, v0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    div-long v9, v5, v7

    const-wide v5, 0x39ef8b000L

    iget-wide v7, v0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    div-long v13, v5, v7

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->constrain(JJJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 274
    .local v5, "bucketEstimate":I
    new-instance v6, Landroid/net/NetworkStatsHistory;

    iget-wide v7, v0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    invoke-direct {v6, v7, v8, v5, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v9, v6

    .line 278
    .local v9, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v6, p7, p9

    if-nez v6, :cond_33

    return-object v9

    .line 281
    :cond_33
    const-wide/16 v6, -0x1

    .line 282
    .local v6, "augmentStart":J
    const-wide/16 v15, -0x1

    if-eqz p2, :cond_3e

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v10

    goto :goto_3f

    .line 283
    :cond_3e
    move-wide v10, v15

    :goto_3f
    nop

    .line 285
    .local v10, "augmentEnd":J
    move-wide/from16 v12, p7

    .line 286
    .local v12, "collectStart":J
    move-wide/from16 v17, p9

    .line 288
    .local v17, "collectEnd":J
    cmp-long v8, v10, v15

    if-eqz v8, :cond_a4

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v8

    .line 290
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    :goto_4c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 291
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Range;

    .line 292
    .local v14, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v19 .. v19}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v19

    .line 293
    .local v19, "cycleStart":J
    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v21

    check-cast v21, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 294
    .local v21, "cycleEnd":J
    cmp-long v23, v19, v10

    if-gtz v23, :cond_90

    cmp-long v23, v10, v21

    if-gez v23, :cond_90

    .line 295
    move-wide/from16 v6, v19

    .line 296
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v12

    .line 297
    move-wide/from16 v23, v6

    move-wide/from16 v6, v17

    .end local v17    # "collectEnd":J
    .local v6, "collectEnd":J
    .local v23, "augmentStart":J
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v17

    .line 298
    .end local v6    # "collectEnd":J
    .restart local v17    # "collectEnd":J
    move-object v14, v9

    move-wide/from16 v8, v17

    move-wide/from16 v6, v23

    goto :goto_ae

    .line 294
    .end local v23    # "augmentStart":J
    .local v6, "augmentStart":J
    :cond_90
    move-wide/from16 v43, v17

    move-wide/from16 v17, v6

    move-wide/from16 v6, v43

    .line 300
    .end local v14    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v19    # "cycleStart":J
    .end local v21    # "cycleEnd":J
    .local v6, "collectEnd":J
    .local v17, "augmentStart":J
    move-wide/from16 v43, v17

    move-wide/from16 v17, v6

    move-wide/from16 v6, v43

    goto :goto_4c

    .line 290
    .local v6, "augmentStart":J
    .local v17, "collectEnd":J
    :cond_9d
    move-wide/from16 v43, v17

    move-wide/from16 v17, v6

    move-wide/from16 v6, v43

    .local v6, "collectEnd":J
    .local v17, "augmentStart":J
    goto :goto_aa

    .line 288
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    .local v6, "augmentStart":J
    .local v17, "collectEnd":J
    :cond_a4
    move-wide/from16 v43, v17

    move-wide/from16 v17, v6

    move-wide/from16 v6, v43

    .line 303
    .local v6, "collectEnd":J
    .local v17, "augmentStart":J
    :goto_aa
    move-object v14, v9

    move-wide v8, v6

    move-wide/from16 v6, v17

    .end local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v17    # "augmentStart":J
    .local v6, "augmentStart":J
    .local v8, "collectEnd":J
    .local v14, "combined":Landroid/net/NetworkStatsHistory;
    :goto_ae
    cmp-long v17, v6, v15

    if-eqz v17, :cond_c6

    .line 305
    invoke-virtual {v0, v6, v7}, Landroid/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v6

    .line 306
    invoke-virtual {v0, v10, v11}, Landroid/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v10

    .line 308
    invoke-virtual {v0, v12, v13}, Landroid/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v12

    .line 309
    invoke-virtual {v0, v8, v9}, Landroid/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v8

    move-wide/from16 v17, v10

    move-wide v11, v12

    goto :goto_c9

    .line 303
    :cond_c6
    move-wide/from16 v17, v10

    move-wide v11, v12

    .line 312
    .end local v10    # "augmentEnd":J
    .end local v12    # "collectStart":J
    .local v11, "collectStart":J
    .local v17, "augmentEnd":J
    :goto_c9
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ca
    iget-object v13, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v10, v13, :cond_12f

    .line 313
    iget-object v13, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkStatsCollection$Key;

    .line 314
    .local v13, "key":Landroid/net/NetworkStatsCollection$Key;
    move-wide/from16 v19, v15

    iget v15, v13, Landroid/net/NetworkStatsCollection$Key;->uid:I

    if-ne v15, v1, :cond_11a

    iget v15, v13, Landroid/net/NetworkStatsCollection$Key;->set:I

    move/from16 v4, p4

    invoke-static {v4, v15}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v15

    if-eqz v15, :cond_11a

    iget v15, v13, Landroid/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v4, p5

    if-ne v15, v4, :cond_11a

    iget-object v15, v13, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 315
    move-object/from16 v4, p1

    invoke-static {v4, v15}, Landroid/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Landroid/net/connectivity/android/net/NetworkIdentitySet;)Z

    move-result v15

    if-eqz v15, :cond_112

    .line 316
    iget-object v15, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkStatsHistory;

    .line 317
    .local v15, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v43, v8

    move v8, v10

    move-object v9, v14

    move-object v10, v15

    move-object v15, v13

    move-wide/from16 v13, v43

    .end local v14    # "combined":Landroid/net/NetworkStatsHistory;
    .local v8, "i":I
    .restart local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .local v10, "value":Landroid/net/NetworkStatsHistory;
    .local v13, "collectEnd":J
    .local v15, "key":Landroid/net/NetworkStatsCollection$Key;
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    .end local v11    # "collectStart":J
    .end local v13    # "collectEnd":J
    .local v21, "collectStart":J
    .local v23, "collectEnd":J
    goto :goto_123

    .line 315
    .end local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v15    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v21    # "collectStart":J
    .end local v23    # "collectEnd":J
    .local v8, "collectEnd":J
    .local v10, "i":I
    .restart local v11    # "collectStart":J
    .local v13, "key":Landroid/net/NetworkStatsCollection$Key;
    .restart local v14    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_112
    move-wide/from16 v23, v8

    move v8, v10

    move-wide/from16 v21, v11

    move-object v15, v13

    move-object v9, v14

    .end local v10    # "i":I
    .end local v11    # "collectStart":J
    .end local v13    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v14    # "combined":Landroid/net/NetworkStatsHistory;
    .local v8, "i":I
    .restart local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v15    # "key":Landroid/net/NetworkStatsCollection$Key;
    .restart local v21    # "collectStart":J
    .restart local v23    # "collectEnd":J
    goto :goto_123

    .line 314
    .end local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v15    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v21    # "collectStart":J
    .end local v23    # "collectEnd":J
    .local v8, "collectEnd":J
    .restart local v10    # "i":I
    .restart local v11    # "collectStart":J
    .restart local v13    # "key":Landroid/net/NetworkStatsCollection$Key;
    .restart local v14    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_11a
    move-object/from16 v4, p1

    move-wide/from16 v23, v8

    move v8, v10

    move-wide/from16 v21, v11

    move-object v15, v13

    move-object v9, v14

    .line 312
    .end local v10    # "i":I
    .end local v11    # "collectStart":J
    .end local v13    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v14    # "combined":Landroid/net/NetworkStatsHistory;
    .local v8, "i":I
    .restart local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v21    # "collectStart":J
    .restart local v23    # "collectEnd":J
    :goto_123
    add-int/lit8 v10, v8, 0x1

    move/from16 v4, p11

    move-object v14, v9

    move-wide/from16 v15, v19

    move-wide/from16 v11, v21

    move-wide/from16 v8, v23

    .end local v8    # "i":I
    .restart local v10    # "i":I
    goto :goto_ca

    .end local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v21    # "collectStart":J
    .end local v23    # "collectEnd":J
    .local v8, "collectEnd":J
    .restart local v11    # "collectStart":J
    .restart local v14    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_12f
    move-object/from16 v4, p1

    move-wide/from16 v23, v8

    move v8, v10

    move-wide/from16 v21, v11

    move-object v9, v14

    move-wide/from16 v19, v15

    .line 321
    .end local v8    # "collectEnd":J
    .end local v10    # "i":I
    .end local v11    # "collectStart":J
    .end local v14    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .restart local v21    # "collectStart":J
    .restart local v23    # "collectEnd":J
    cmp-long v8, v6, v19

    if-eqz v8, :cond_23f

    .line 322
    const/4 v14, 0x0

    move-wide v10, v6

    move-wide/from16 v12, v17

    .end local v6    # "augmentStart":J
    .end local v17    # "augmentEnd":J
    .local v10, "augmentStart":J
    .local v12, "augmentEnd":J
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    .line 327
    .local v6, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v7, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v14, 0x0

    cmp-long v7, v7, v14

    if-eqz v7, :cond_159

    iget-wide v7, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v7, v7, v14

    if-nez v7, :cond_154

    goto :goto_159

    :cond_154
    move-wide v7, v14

    move-wide/from16 v17, v12

    move-wide v15, v10

    goto :goto_183

    .line 328
    :cond_159
    :goto_159
    new-instance v25, Landroid/net/NetworkStats$Entry;

    sget-object v26, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x1

    invoke-direct/range {v25 .. v42}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-wide v7, v14

    move-object/from16 v14, v25

    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 331
    move-object v14, v6

    .end local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v14, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-wide v15, v10

    move-wide/from16 v17, v12

    .line 334
    .end local v10    # "augmentStart":J
    .end local v12    # "augmentEnd":J
    .end local v14    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .local v15, "augmentStart":J
    .restart local v17    # "augmentEnd":J
    :goto_183
    iget-wide v10, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    cmp-long v10, v10, v7

    if-nez v10, :cond_18f

    const-wide/16 v13, 0x1

    goto :goto_194

    .line 335
    :cond_18f
    iget-wide v13, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v13, v11

    :goto_194
    move-wide/from16 v29, v13

    .line 336
    .local v29, "rawBytes":J
    iget-wide v10, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    cmp-long v10, v10, v7

    if-nez v10, :cond_19f

    const-wide/16 v27, 0x1

    goto :goto_1a3

    :cond_19f
    iget-wide v10, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v27, v10

    :goto_1a3
    move-wide/from16 v35, v27

    .line 337
    .local v35, "rawRxBytes":J
    iget-wide v10, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v10, v10, v7

    if-nez v10, :cond_1ae

    const-wide/16 v27, 0x1

    goto :goto_1b2

    :cond_1ae
    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v27, v11

    :goto_1b2
    move-wide/from16 v41, v27

    .line 338
    .local v41, "rawTxBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v25

    .line 340
    .local v25, "targetBytes":J
    move-wide/from16 v27, v35

    .end local v35    # "rawRxBytes":J
    .local v27, "rawRxBytes":J
    invoke-static/range {v25 .. v30}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v31

    .line 341
    .end local v27    # "rawRxBytes":J
    .local v31, "targetRxBytes":J
    .restart local v35    # "rawRxBytes":J
    move-wide/from16 v27, v41

    .end local v41    # "rawTxBytes":J
    .local v27, "rawTxBytes":J
    invoke-static/range {v25 .. v30}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v37

    .line 345
    .end local v27    # "rawTxBytes":J
    .local v37, "targetTxBytes":J
    .restart local v41    # "rawTxBytes":J
    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v19

    .line 346
    .local v19, "beforeTotal":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1c9
    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v11

    if-ge v10, v11, :cond_1ff

    .line 347
    invoke-virtual {v9, v10, v6}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    .line 348
    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v11, v11, v15

    if-ltz v11, :cond_1fc

    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v13, v6, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v11, v13

    cmp-long v11, v11, v17

    if-gtz v11, :cond_1fc

    .line 350
    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v33, v11

    invoke-static/range {v31 .. v36}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v11

    iput-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 352
    iget-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v39, v11

    invoke-static/range {v37 .. v42}, Landroid/net/connectivity/com/android/net/module/util/NetworkStatsUtils;->multiplySafeByRational(JJJ)J

    move-result-wide v11

    iput-wide v11, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 356
    iput-wide v7, v6, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 357
    iput-wide v7, v6, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 358
    invoke-virtual {v9, v10, v6}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    .line 346
    :cond_1fc
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c9

    .line 362
    .end local v10    # "i":I
    :cond_1ff
    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v10

    sub-long v10, v10, v19

    .line 363
    .local v10, "deltaTotal":J
    cmp-long v7, v10, v7

    if-eqz v7, :cond_227

    .line 364
    sget-object v7, Landroid/net/NetworkStatsCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Augmented network usage by "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " bytes"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_227
    new-instance v7, Landroid/net/NetworkStatsHistory;

    iget-wide v12, v0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    invoke-direct {v7, v12, v13, v5, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 370
    .local v7, "sliced":Landroid/net/NetworkStatsHistory;
    move-object v12, v9

    move-object v9, v7

    move-wide v7, v10

    move-object v10, v12

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    .local v7, "deltaTotal":J
    .local v9, "sliced":Landroid/net/NetworkStatsHistory;
    .local v10, "combined":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 371
    move-object/from16 v43, v10

    move-object v10, v9

    move-object/from16 v9, v43

    .local v9, "combined":Landroid/net/NetworkStatsHistory;
    .local v10, "sliced":Landroid/net/NetworkStatsHistory;
    return-object v10

    .line 373
    .end local v7    # "deltaTotal":J
    .end local v10    # "sliced":Landroid/net/NetworkStatsHistory;
    .end local v15    # "augmentStart":J
    .end local v19    # "beforeTotal":J
    .end local v25    # "targetBytes":J
    .end local v29    # "rawBytes":J
    .end local v31    # "targetRxBytes":J
    .end local v35    # "rawRxBytes":J
    .end local v37    # "targetTxBytes":J
    .end local v41    # "rawTxBytes":J
    .local v6, "augmentStart":J
    :cond_23f
    return-object v9

    .line 265
    .end local v5    # "bucketEstimate":I
    .end local v6    # "augmentStart":J
    .end local v9    # "combined":Landroid/net/NetworkStatsHistory;
    .end local v17    # "augmentEnd":J
    .end local v21    # "collectStart":J
    .end local v23    # "collectEnd":J
    :cond_240
    move-object/from16 v4, p1

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network stats history of uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is forbidden for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public blacklist getRelevantUids(I)[I
    .registers 3
    .param p1, "accessLevel"    # I

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRelevantUids(II)[I
    .registers 8
    .param p1, "accessLevel"    # I
    .param p2, "callerUid"    # I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 243
    iget-object v2, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 244
    .local v2, "key":Landroid/net/NetworkStatsCollection$Key;
    iget v3, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Landroid/net/connectivity/android/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 245
    new-instance v3, Ljava/lang/Integer;

    iget v4, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 247
    .local v3, "j":I
    if-gez v3, :cond_35

    .line 248
    not-int v3, v3

    .line 249
    iget v4, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v3    # "j":I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 253
    .end local v1    # "i":I
    :cond_38
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    return-object v1
.end method

.method public blacklist getStartMillis()J
    .registers 3

    .line 161
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public blacklist getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .registers 24
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "accessLevel"    # I
    .param p7, "callerUid"    # I

    .line 390
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 392
    .local v6, "now":J
    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v9, v1

    .line 395
    .local v9, "stats":Landroid/net/NetworkStats;
    cmp-long v1, p2, p4

    if-nez v1, :cond_15

    return-object v9

    .line 397
    :cond_15
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v10, v1

    .line 398
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 400
    .local v1, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v2, 0x0

    move-object v8, v1

    move v11, v2

    .end local v1    # "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    .local v11, "i":I
    :goto_1f
    iget-object v1, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v11, v1, :cond_af

    .line 401
    iget-object v1, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/net/NetworkStatsCollection$Key;

    .line 402
    .local v12, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v1, v12, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    move-object/from16 v13, p1

    invoke-static {v13, v1}, Landroid/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Landroid/net/connectivity/android/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget v1, v12, Landroid/net/NetworkStatsCollection$Key;->uid:I

    .line 403
    move/from16 v14, p6

    move/from16 v15, p7

    invoke-static {v1, v15, v14}, Landroid/net/connectivity/android/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget v1, v12, Landroid/net/NetworkStatsCollection$Key;->set:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_ab

    .line 405
    iget-object v1, v0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 406
    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 408
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v10, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 409
    iget v2, v12, Landroid/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v10, Landroid/net/NetworkStats$Entry;->uid:I

    .line 410
    iget v2, v12, Landroid/net/NetworkStatsCollection$Key;->set:I

    iput v2, v10, Landroid/net/NetworkStats$Entry;->set:I

    .line 411
    iget v2, v12, Landroid/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v10, Landroid/net/NetworkStats$Entry;->tag:I

    .line 412
    iget-object v2, v12, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 413
    const/4 v2, 0x1

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    iput v2, v10, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 414
    iget-object v2, v12, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v2

    iput v2, v10, Landroid/net/NetworkStats$Entry;->metered:I

    .line 415
    iget-object v2, v12, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-virtual {v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v2

    iput v2, v10, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 416
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 417
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 418
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 419
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 420
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v10, Landroid/net/NetworkStats$Entry;->operations:J

    .line 422
    invoke-virtual {v10}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ab

    .line 423
    invoke-virtual {v9, v10}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_ab

    .line 402
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_a7
    move/from16 v14, p6

    move/from16 v15, p7

    .line 400
    .end local v12    # "key":Landroid/net/NetworkStatsCollection$Key;
    :cond_ab
    :goto_ab
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1f

    :cond_af
    move-object/from16 v13, p1

    move/from16 v14, p6

    move/from16 v15, p7

    .line 428
    .end local v11    # "i":I
    return-object v9
.end method

.method public blacklist getTotalBytes()J
    .registers 3

    .line 184
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public blacklist isDirty()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 5

    .line 199
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-boolean v0, p0, Landroid/net/NetworkStatsCollection;->mUseFastDataInput:Z

    if-eqz v0, :cond_c

    .line 501
    invoke-static {p1}, Landroid/net/connectivity/com/android/modules/utils/FastDataInput;->obtain(Ljava/io/InputStream;)Landroid/net/connectivity/com/android/modules/utils/FastDataInput;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/NetworkStatsCollection;->read(Ljava/io/DataInput;)V

    goto :goto_14

    .line 503
    :cond_c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStatsCollection;->read(Ljava/io/DataInput;)V

    .line 505
    :goto_14
    return-void
.end method

.method public blacklist readLegacyNetwork(Ljava/io/File;)V
    .registers 13
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 590
    .local v0, "inputFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 592
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 595
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 596
    .local v2, "magic":I
    const v3, 0x414e4554

    if-ne v2, v3, :cond_5e

    .line 600
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 601
    .local v3, "version":I
    packed-switch v3, :pswitch_data_82

    .line 615
    new-instance v4, Ljava/net/ProtocolException;

    goto :goto_47

    .line 604
    :pswitch_28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 605
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    if-ge v5, v4, :cond_46

    .line 606
    new-instance v6, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-direct {v6, v1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 607
    .local v6, "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-direct {v7, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V

    .line 609
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    new-instance v8, Landroid/net/NetworkStatsCollection$Key;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v8, v6, v10, v10, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 610
    .local v8, "key":Landroid/net/NetworkStatsCollection$Key;
    invoke-virtual {p0, v8, v7}, Landroid/net/NetworkStatsCollection;->recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 605
    .end local v6    # "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "key":Landroid/net/NetworkStatsCollection$Key;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 612
    .end local v5    # "i":I
    :cond_46
    goto :goto_7d

    .line 615
    .end local v4    # "size":I
    :goto_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Landroid/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v4

    .line 597
    .end local v3    # "version":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Landroid/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :cond_5e
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputFile":Landroid/util/AtomicFile;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Landroid/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_77} :catch_7c
    .catchall {:try_start_6 .. :try_end_77} :catchall_77

    .line 621
    .end local v2    # "magic":I
    .restart local v0    # "inputFile":Landroid/util/AtomicFile;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Landroid/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_77
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 622
    throw v2

    .line 618
    :catch_7c
    move-exception v2

    .line 621
    :goto_7d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 622
    nop

    .line 623
    return-void

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist readLegacyUid(Ljava/io/File;Z)V
    .registers 19
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 636
    .local v2, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 638
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_9
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 641
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 642
    .local v0, "magic":I
    const v4, 0x414e4554

    if-ne v0, v4, :cond_a3

    .line 646
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_25} :catch_cd
    .catchall {:try_start_9 .. :try_end_25} :catchall_c4

    .line 647
    .local v4, "version":I
    packed-switch v4, :pswitch_data_d8

    .line 687
    move-object/from16 v12, p0

    move/from16 v1, p2

    :try_start_2c
    new-instance v5, Ljava/net/ProtocolException;
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2e} :catch_c2
    .catchall {:try_start_2c .. :try_end_2e} :catchall_c0

    goto/16 :goto_8c

    .line 665
    :pswitch_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 666
    .local v5, "identSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    if-ge v6, v5, :cond_7d

    .line 667
    new-instance v7, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-direct {v7, v3}, Landroid/net/connectivity/android/net/NetworkIdentitySet;-><init>(Ljava/io/DataInput;)V

    .line 669
    .local v7, "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 670
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_41
    if-ge v9, v8, :cond_74

    .line 671
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 672
    .local v10, "uid":I
    const/4 v11, 0x4

    const/4 v12, 0x0

    if-lt v4, v11, :cond_50

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    goto :goto_51

    .line 673
    :cond_50
    move v11, v12

    :goto_51
    nop

    .line 674
    .local v11, "set":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 676
    .local v13, "tag":I
    new-instance v14, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v14, v7, v10, v11, v13}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 677
    .local v14, "key":Landroid/net/NetworkStatsCollection$Key;
    new-instance v15, Landroid/net/NetworkStatsHistory;

    invoke-direct {v15, v3}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInput;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_60} :catch_cd
    .catchall {:try_start_30 .. :try_end_60} :catchall_c4

    .line 679
    .local v15, "history":Landroid/net/NetworkStatsHistory;
    if-nez v13, :cond_63

    const/4 v12, 0x1

    :cond_63
    move/from16 v1, p2

    if-eq v12, v1, :cond_6d

    .line 680
    move-object/from16 v12, p0

    :try_start_69
    invoke-virtual {v12, v14, v15}, Landroid/net/NetworkStatsCollection;->recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_6f

    .line 679
    :cond_6d
    move-object/from16 v12, p0

    .line 670
    .end local v10    # "uid":I
    .end local v11    # "set":I
    .end local v13    # "tag":I
    .end local v14    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v15    # "history":Landroid/net/NetworkStatsHistory;
    :goto_6f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_41

    :cond_74
    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 666
    .end local v7    # "ident":Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .end local v8    # "size":I
    .end local v9    # "j":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    goto :goto_35

    :cond_7d
    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 684
    .end local v6    # "i":I
    goto :goto_d2

    .line 660
    .end local v5    # "identSize":I
    :pswitch_82
    move-object/from16 v12, p0

    move/from16 v1, p2

    goto :goto_d2

    .line 653
    :pswitch_87
    move-object/from16 v12, p0

    move/from16 v1, p2

    goto :goto_d2

    .line 687
    :goto_8c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Landroid/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v5

    .line 643
    .end local v4    # "version":I
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Landroid/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :cond_a3
    move-object/from16 v12, p0

    move/from16 v1, p2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inputFile":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Landroid/net/NetworkStatsCollection;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "onlyTags":Z
    throw v4
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_c0} :catch_c2
    .catchall {:try_start_69 .. :try_end_c0} :catchall_c0

    .line 693
    .end local v0    # "magic":I
    .restart local v2    # "inputFile":Landroid/util/AtomicFile;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Landroid/net/NetworkStatsCollection;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "onlyTags":Z
    :catchall_c0
    move-exception v0

    goto :goto_c9

    .line 690
    :catch_c2
    move-exception v0

    goto :goto_d2

    .line 693
    :catchall_c4
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v1, p2

    :goto_c9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    throw v0

    .line 690
    :catch_cd
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v1, p2

    .line 693
    :goto_d2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    nop

    .line 695
    return-void

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_87
        :pswitch_82
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist recordCollection(Landroid/net/NetworkStatsCollection;)V
    .registers 5
    .param p1, "another"    # Landroid/net/NetworkStatsCollection;

    .line 468
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p1, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 470
    iget-object v1, p1, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsCollection$Key;

    .line 471
    .local v1, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v2, p1, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 472
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsCollection;->recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 469
    .end local v1    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 474
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public blacklist recordData(Landroid/net/connectivity/android/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .registers 23
    .param p1, "ident"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 437
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsCollection;->findOrCreateHistory(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 438
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 439
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v9

    iget-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v11, v1, v3

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroid/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 440
    return-void
.end method

.method public blacklist recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .registers 11
    .param p1, "key"    # Landroid/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .line 448
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 451
    :cond_d
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 453
    iget-object v0, v1, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 454
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_36

    .line 455
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v0, v2

    .line 456
    iget-object v2, v1, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_36
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 459
    return-void
.end method

.method public blacklist removeHistoryBefore(J)V
    .registers 9
    .param p1, "cutoffMillis"    # J

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 731
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 732
    .local v2, "key":Landroid/net/NetworkStatsCollection$Key;
    iget-object v3, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 733
    .local v3, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_2f

    goto :goto_12

    .line 735
    :cond_2f
    invoke-virtual {v3, p1, p2}, Landroid/net/NetworkStatsHistory;->removeBucketsStartingBefore(J)V

    .line 736
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_3d

    .line 737
    iget-object v4, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_3d
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    .line 740
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    .end local v3    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_12

    .line 741
    :cond_41
    return-void
.end method

.method public blacklist removeUids([I)V
    .registers 9
    .param p1, "uids"    # [I

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v0, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStatsCollection$Key;>;"
    iget-object v1, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 708
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    .line 709
    .local v2, "key":Landroid/net/NetworkStatsCollection$Key;
    iget v3, v2, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v3}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 711
    iget v3, v2, Landroid/net/NetworkStatsCollection$Key;->tag:I

    if-nez v3, :cond_3d

    .line 712
    iget-object v3, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 713
    .local v3, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v4, v2, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Landroid/net/NetworkStatsCollection;->findOrCreateHistory(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 715
    .local v4, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v4, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 717
    .end local v3    # "uidHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "removedHistory":Landroid/net/NetworkStatsHistory;
    :cond_3d
    iget-object v3, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    .line 720
    .end local v2    # "key":Landroid/net/NetworkStatsCollection$Key;
    :cond_45
    goto :goto_12

    .line 721
    :cond_46
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 153
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/net/NetworkStatsCollection;->mStartMillis:J

    .line 154
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/NetworkStatsCollection;->mEndMillis:J

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsCollection;->mTotalBytes:J

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStatsCollection;->mDirty:Z

    .line 157
    return-void
.end method

.method public blacklist roundDown(J)J
    .registers 7
    .param p1, "time"    # J

    .line 221
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_22

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_22

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_22

    .line 225
    :cond_16
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    rem-long v0, p1, v0

    .line 226
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 227
    sub-long/2addr p1, v0

    .line 229
    :cond_21
    return-wide p1

    .line 223
    .end local v0    # "mod":J
    :cond_22
    :goto_22
    return-wide p1
.end method

.method public blacklist roundUp(J)J
    .registers 7
    .param p1, "time"    # J

    .line 205
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_25

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_25

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_25

    .line 209
    :cond_16
    iget-wide v0, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    rem-long v0, p1, v0

    .line 210
    .local v0, "mod":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    .line 211
    sub-long/2addr p1, v0

    .line 212
    iget-wide v2, p0, Landroid/net/NetworkStatsCollection;->mBucketDurationMillis:J

    add-long/2addr p1, v2

    .line 214
    :cond_24
    return-wide p1

    .line 207
    .end local v0    # "mod":J
    :cond_25
    :goto_25
    return-wide p1
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStatsCollection;->write(Ljava/io/DataOutput;)V

    .line 545
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 546
    return-void
.end method
