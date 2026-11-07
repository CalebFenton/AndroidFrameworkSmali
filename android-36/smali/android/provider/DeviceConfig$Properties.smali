.class public Landroid/provider/DeviceConfig$Properties;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DeviceConfig$Properties$Builder;
    }
.end annotation


# instance fields
.field private blacklist mKeyset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetMap(Landroid/provider/DeviceConfig$Properties;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/provider/DeviceConfig$Properties;->getMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetString(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->setString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1884
    .local p2, "keyValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1885
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    iput-object p1, p0, Landroid/provider/DeviceConfig$Properties;->mNamespace:Ljava/lang/String;

    .line 1887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    .line 1888
    if-eqz p2, :cond_16

    .line 1889
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1891
    :cond_16
    return-void
.end method

.method private blacklist getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1935
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private blacklist setString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1928
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mKeyset:Ljava/util/Set;

    .line 1930
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1946
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1948
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_13

    :cond_12
    move v1, p2

    :goto_13
    return v1
.end method

.method public whitelist getFloat(Ljava/lang/String;F)F
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 2004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2006
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 2007
    return p2

    .line 2010
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    return v1

    .line 2011
    :catch_13
    move-exception v1

    .line 2012
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing float failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return p2
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1960
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1962
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1963
    return p2

    .line 1966
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    return v1

    .line 1967
    :catch_13
    move-exception v1

    .line 1968
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing int failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return p2
.end method

.method public whitelist getKeyset()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1906
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mKeyset:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 1907
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mKeyset:Ljava/util/Set;

    .line 1909
    :cond_10
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mKeyset:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1982
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1984
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1985
    return-wide p2

    .line 1988
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    return-wide v1

    .line 1989
    :catch_13
    move-exception v1

    .line 1990
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing long failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    return-wide p2
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 2

    .line 1898
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPropertyValues()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1921
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    iget-object v0, p0, Landroid/provider/DeviceConfig$Properties;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1923
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    move-object v1, v0

    goto :goto_10

    :cond_f
    move-object v1, p2

    :goto_10
    return-object v1
.end method
