.class public final Landroid/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field public final blacklist ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

.field private final blacklist mHashCode:I

.field public final blacklist set:I

.field public final blacklist tag:I

.field public final blacklist uid:I


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V
    .registers 8
    .param p1, "ident"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    iput-object v0, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 1072
    iput p2, p0, Landroid/net/NetworkStatsCollection$Key;->uid:I

    .line 1073
    iput p3, p0, Landroid/net/NetworkStatsCollection$Key;->set:I

    .line 1074
    iput p4, p0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    .line 1075
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStatsCollection$Key;->mHashCode:I

    .line 1076
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;III)V
    .registers 7
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;III)V"
        }
    .end annotation

    .line 1066
    .local p1, "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    new-instance v0, Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/net/NetworkStatsCollection$Key;-><init>(Landroid/net/connectivity/android/net/NetworkIdentitySet;III)V

    .line 1067
    return-void
.end method

.method public static blacklist compare(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsCollection$Key;)I
    .registers 5
    .param p0, "left"    # Landroid/net/NetworkStatsCollection$Key;
    .param p1, "right"    # Landroid/net/NetworkStatsCollection$Key;

    .line 1095
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "res":I
    iget-object v1, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    if-eqz v1, :cond_17

    iget-object v1, p1, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    if-eqz v1, :cond_17

    .line 1099
    iget-object v1, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    iget-object v2, p1, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    invoke-static {v1, v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->compare(Landroid/net/connectivity/android/net/NetworkIdentitySet;Landroid/net/connectivity/android/net/NetworkIdentitySet;)I

    move-result v0

    .line 1101
    :cond_17
    if-nez v0, :cond_21

    .line 1102
    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->uid:I

    iget v2, p1, Landroid/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1104
    :cond_21
    if-nez v0, :cond_2b

    .line 1105
    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->set:I

    iget v2, p1, Landroid/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1107
    :cond_2b
    if-nez v0, :cond_35

    .line 1108
    iget v1, p0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    iget v2, p1, Landroid/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1110
    :cond_35
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1085
    instance-of v0, p1, Landroid/net/NetworkStatsCollection$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1086
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkStatsCollection$Key;

    .line 1087
    .local v0, "key":Landroid/net/NetworkStatsCollection$Key;
    iget v2, p0, Landroid/net/NetworkStatsCollection$Key;->uid:I

    iget v3, v0, Landroid/net/NetworkStatsCollection$Key;->uid:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Landroid/net/NetworkStatsCollection$Key;->set:I

    iget v3, v0, Landroid/net/NetworkStatsCollection$Key;->set:I

    if-ne v2, v3, :cond_26

    iget v2, p0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    iget v3, v0, Landroid/net/NetworkStatsCollection$Key;->tag:I

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    iget-object v3, v0, Landroid/net/NetworkStatsCollection$Key;->ident:Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 1088
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 1087
    :goto_27
    return v1

    .line 1090
    .end local v0    # "key":Landroid/net/NetworkStatsCollection$Key;
    :cond_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1080
    iget v0, p0, Landroid/net/NetworkStatsCollection$Key;->mHashCode:I

    return v0
.end method
