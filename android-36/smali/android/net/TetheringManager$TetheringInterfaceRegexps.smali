.class public Landroid/net/TetheringManager$TetheringInterfaceRegexps;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TetheringInterfaceRegexps"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private final blacklist mTetherableUsbRegexs:[Ljava/lang/String;

.field private final blacklist mTetherableWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "tetherableBluetoothRegexs"    # [Ljava/lang/String;
    .param p2, "tetherableUsbRegexs"    # [Ljava/lang/String;
    .param p3, "tetherableWifiRegexs"    # [Ljava/lang/String;

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 1811
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1812
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 1813
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1840
    instance-of v0, p1, Landroid/net/TetheringManager$TetheringInterfaceRegexps;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1841
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;

    .line 1842
    .local v0, "other":Landroid/net/TetheringManager$TetheringInterfaceRegexps;
    iget-object v2, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableUsbRegexs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1843
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableWifiRegexs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 1844
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 1842
    :goto_2a
    return v1
.end method

.method public blacklist getTetherableBluetoothRegexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTetherableUsbRegexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTetherableWifiRegexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1832
    iget-object v0, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 1833
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1834
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringManager$TetheringInterfaceRegexps;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 1835
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1832
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
