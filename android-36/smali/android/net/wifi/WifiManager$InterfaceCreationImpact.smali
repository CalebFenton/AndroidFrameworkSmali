.class public Landroid/net/wifi/WifiManager$InterfaceCreationImpact;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceCreationImpact"
.end annotation


# instance fields
.field private final blacklist mInterfaceType:I

.field private final blacklist mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILjava/util/Set;)V
    .registers 3
    .param p1, "interfaceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11950
    .local p2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11951
    iput p1, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mInterfaceType:I

    .line 11952
    iput-object p2, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mPackages:Ljava/util/Set;

    .line 11953
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 11978
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 11979
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 11980
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;

    .line 11982
    .local v1, "thatInterfaceCreationImpact":Landroid/net/wifi/WifiManager$InterfaceCreationImpact;
    iget v3, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mInterfaceType:I

    iget v4, v1, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mInterfaceType:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mPackages:Ljava/util/Set;

    iget-object v4, v1, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mPackages:Ljava/util/Set;

    .line 11983
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 11982
    :goto_1f
    return v0
.end method

.method public whitelist getInterfaceType()I
    .registers 2

    .line 11960
    iget v0, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mInterfaceType:I

    return v0
.end method

.method public whitelist getPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11968
    iget-object v0, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mPackages:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 11973
    iget v0, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mInterfaceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiManager$InterfaceCreationImpact;->mPackages:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
