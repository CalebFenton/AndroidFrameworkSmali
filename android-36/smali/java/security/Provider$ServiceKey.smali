.class Ljava/security/Provider$ServiceKey;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceKey"
.end annotation


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o originalAlgorithm:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "intern"    # Z

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p1, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    .line 905
    iput-object p2, p0, Ljava/security/Provider$ServiceKey;->originalAlgorithm:Ljava/lang/String;

    .line 906
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 907
    if-eqz p3, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, p2

    :goto_15
    iput-object v0, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    .line 908
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 913
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 914
    return v0

    .line 916
    :cond_4
    instance-of v1, p1, Ljava/security/Provider$ServiceKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 917
    return v2

    .line 919
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/security/Provider$ServiceKey;

    .line 920
    .local v1, "other":Ljava/security/Provider$ServiceKey;
    iget-object v3, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    iget-object v4, v1, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    iget-object v4, v1, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    .line 921
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 920
    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 910
    iget-object v0, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    if-ne v0, p1, :cond_a

    iget-object v0, p0, Ljava/security/Provider$ServiceKey;->originalAlgorithm:Ljava/lang/String;

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
