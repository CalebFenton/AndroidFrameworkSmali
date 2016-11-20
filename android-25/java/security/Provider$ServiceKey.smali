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
.field private final algorithm:Ljava/lang/String;

.field private final originalAlgorithm:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "intern"    # Z

    #@0
    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 543
    iput-object p1, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    #@5
    .line 544
    iput-object p2, p0, Ljava/security/Provider$ServiceKey;->originalAlgorithm:Ljava/lang/String;

    #@7
    .line 545
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c
    move-result-object p2

    #@d
    .line 546
    if-eqz p3, :cond_0

    #@f
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@12
    move-result-object p2

    #@13
    .end local p2    # "algorithm":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    #@15
    .line 542
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "intern"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 552
    if-ne p0, p1, :cond_0

    #@3
    .line 553
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 555
    :cond_0
    instance-of v2, p1, Ljava/security/Provider$ServiceKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 556
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 558
    check-cast v0, Ljava/security/Provider$ServiceKey;

    #@d
    .line 559
    .local v0, "other":Ljava/security/Provider$ServiceKey;
    iget-object v2, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    #@f
    iget-object v3, v0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 560
    iget-object v1, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    #@19
    iget-object v2, v0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 559
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/security/Provider$ServiceKey;->algorithm:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 563
    iget-object v1, p0, Ljava/security/Provider$ServiceKey;->type:Ljava/lang/String;

    #@3
    if-ne v1, p1, :cond_0

    #@5
    iget-object v1, p0, Ljava/security/Provider$ServiceKey;->originalAlgorithm:Ljava/lang/String;

    #@7
    if-ne v1, p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method
