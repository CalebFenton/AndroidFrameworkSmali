.class public final Landroid/net/NetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDefaultNetwork:I

.field private final blacklist mMatchRule:I

.field private final blacklist mMatchSubscriberIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMatchWifiNetworkKeys:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMetered:I

.field private blacklist mOemManaged:I

.field private blacklist mRatType:I

.field private blacklist mRoaming:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "matchRule"    # I

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    new-instance v0, Ljava/util/TreeSet;

    .line 1033
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchSubscriberIds:Ljava/util/SortedSet;

    .line 1034
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchWifiNetworkKeys:Ljava/util/SortedSet;

    .line 1052
    invoke-static {p1}, Landroid/net/NetworkTemplate$Builder;->assertRequestableMatchRule(I)V

    .line 1054
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mMatchRule:I

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkTemplate$Builder;->mMetered:I

    .line 1056
    iput v0, p0, Landroid/net/NetworkTemplate$Builder;->mRoaming:I

    .line 1057
    iput v0, p0, Landroid/net/NetworkTemplate$Builder;->mDefaultNetwork:I

    .line 1058
    iput v0, p0, Landroid/net/NetworkTemplate$Builder;->mRatType:I

    .line 1059
    iput v0, p0, Landroid/net/NetworkTemplate$Builder;->mOemManaged:I

    .line 1060
    return-void
.end method

.method private static blacklist assertRequestableMatchRule(I)V
    .registers 4
    .param p0, "matchRule"    # I

    .line 1173
    invoke-static {p0}, Landroid/net/NetworkTemplate;->-$$Nest$smisKnownMatchRule(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1177
    return-void

    .line 1174
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid match rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1175
    invoke-static {p0}, Landroid/net/NetworkTemplate;->-$$Nest$smgetMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertRequestableParameters()V
    .registers 1

    .line 1180
    invoke-direct {p0}, Landroid/net/NetworkTemplate$Builder;->validateWifiNetworkKeys()V

    .line 1182
    return-void
.end method

.method private blacklist validateWifiNetworkKeys()V
    .registers 4

    .line 1186
    iget v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchRule:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    iget v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchRule:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchWifiNetworkKeys:Ljava/util/SortedSet;

    .line 1187
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_35

    .line 1188
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to build non wifi match rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate$Builder;->mMatchRule:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with wifi network keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/NetworkTemplate;
    .registers 10

    .line 1200
    invoke-direct {p0}, Landroid/net/NetworkTemplate$Builder;->assertRequestableParameters()V

    .line 1201
    new-instance v0, Landroid/net/NetworkTemplate;

    iget v1, p0, Landroid/net/NetworkTemplate$Builder;->mMatchRule:I

    iget-object v2, p0, Landroid/net/NetworkTemplate$Builder;->mMatchSubscriberIds:Ljava/util/SortedSet;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 1202
    invoke-interface {v2, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v4, p0, Landroid/net/NetworkTemplate$Builder;->mMatchWifiNetworkKeys:Ljava/util/SortedSet;

    new-array v3, v3, [Ljava/lang/String;

    .line 1203
    invoke-interface {v4, v3}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget v4, p0, Landroid/net/NetworkTemplate$Builder;->mMetered:I

    iget v5, p0, Landroid/net/NetworkTemplate$Builder;->mRoaming:I

    iget v6, p0, Landroid/net/NetworkTemplate$Builder;->mDefaultNetwork:I

    iget v7, p0, Landroid/net/NetworkTemplate$Builder;->mRatType:I

    iget v8, p0, Landroid/net/NetworkTemplate$Builder;->mOemManaged:I

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkTemplate;-><init>(I[Ljava/lang/String;[Ljava/lang/String;IIIII)V

    .line 1201
    return-object v0
.end method

.method public blacklist setDefaultNetworkStatus(I)Landroid/net/NetworkTemplate$Builder;
    .registers 2
    .param p1, "defaultNetwork"    # I

    .line 1135
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mDefaultNetwork:I

    .line 1136
    return-object p0
.end method

.method public blacklist setMeteredness(I)Landroid/net/NetworkTemplate$Builder;
    .registers 2
    .param p1, "metered"    # I

    .line 1111
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mMetered:I

    .line 1112
    return-object p0
.end method

.method public blacklist setOemManaged(I)Landroid/net/NetworkTemplate$Builder;
    .registers 2
    .param p1, "oemManaged"    # I

    .line 1163
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mOemManaged:I

    .line 1164
    return-object p0
.end method

.method public blacklist setRatType(I)Landroid/net/NetworkTemplate$Builder;
    .registers 2
    .param p1, "ratType"    # I

    .line 1150
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mRatType:I

    .line 1151
    return-object p0
.end method

.method public blacklist setRoaming(I)Landroid/net/NetworkTemplate$Builder;
    .registers 2
    .param p1, "roaming"    # I

    .line 1123
    iput p1, p0, Landroid/net/NetworkTemplate$Builder;->mRoaming:I

    .line 1124
    return-object p0
.end method

.method public blacklist setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate$Builder;"
        }
    .end annotation

    .line 1071
    .local p1, "subscriberIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchSubscriberIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1073
    iget-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchSubscriberIds:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 1074
    return-object p0
.end method

.method public blacklist setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkTemplate$Builder;"
        }
    .end annotation

    .line 1092
    .local p1, "wifiNetworkKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1094
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 1097
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_7

    .line 1095
    .restart local v1    # "key":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null is not a valid key"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    .end local v1    # "key":Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchWifiNetworkKeys:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1099
    iget-object v0, p0, Landroid/net/NetworkTemplate$Builder;->mMatchWifiNetworkKeys:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 1100
    return-object p0
.end method
