.class public Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected blacklist children:Ljava/util/List;

.field protected blacklist critical:Z

.field protected blacklist depth:I

.field protected blacklist expectedPolicies:Ljava/util/Set;

.field protected blacklist parent:Ljava/security/cert/PolicyNode;

.field protected blacklist policyQualifiers:Ljava/util/Set;

.field protected blacklist validPolicy:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .registers 8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    .line 41
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    .line 42
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 43
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 44
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    .line 45
    iput-object p6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    .line 46
    iput-boolean p7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return-void
.end method


# virtual methods
.method public blacklist addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 9

    .line 140
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 144
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 147
    :cond_20
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 149
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 151
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 154
    :cond_40
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    new-instance v6, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 162
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 163
    :goto_5c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_5c

    :cond_73
    return-object v0
.end method

.method public whitelist test-api getChildren()Ljava/util/Iterator;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getDepth()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    return p0
.end method

.method public whitelist test-api getExpectedPolicies()Ljava/util/Set;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api getParent()Ljava/security/cert/PolicyNode;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-object p0
.end method

.method public whitelist test-api getPolicyQualifiers()Ljava/util/Set;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api getValidPolicy()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hasChildren()Z
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist test-api isCritical()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return p0
.end method

.method public blacklist removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setCritical(Z)V
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return-void
.end method

.method public blacklist setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 123
    :goto_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 125
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 128
    :cond_3e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
