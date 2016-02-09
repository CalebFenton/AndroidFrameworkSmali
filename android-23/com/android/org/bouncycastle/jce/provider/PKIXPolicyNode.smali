.class public Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected expectedPolicies:Ljava/util/Set;

.field protected parent:Ljava/security/cert/PolicyNode;

.field protected policyQualifiers:Ljava/util/Set;

.field protected validPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "_children"    # Ljava/util/List;
    .param p2, "_depth"    # I
    .param p3, "_expectedPolicies"    # Ljava/util/Set;
    .param p4, "_parent"    # Ljava/security/cert/PolicyNode;
    .param p5, "_policyQualifiers"    # Ljava/util/Set;
    .param p6, "_validPolicy"    # Ljava/lang/String;
    .param p7, "_critical"    # Z

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@5
    .line 37
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    #@7
    .line 38
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@9
    .line 39
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    #@b
    .line 40
    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    #@d
    .line 41
    iput-object p6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    #@f
    .line 42
    iput-boolean p7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    #@11
    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1
    .param p1, "_child"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 49
    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@8
    .line 46
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 10

    #@0
    .prologue
    .line 136
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 137
    .local v3, "_expectedPolicies":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v9

    #@b
    .line 138
    .local v9, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 140
    new-instance v2, Ljava/lang/String;

    #@13
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0

    #@20
    .line 143
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    #@22
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@25
    .line 144
    .local v5, "_policyQualifiers":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    #@27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v9

    #@2b
    .line 145
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 147
    new-instance v2, Ljava/lang/String;

    #@33
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/String;

    #@39
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@3c
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_1

    #@40
    .line 150
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@42
    new-instance v1, Ljava/util/ArrayList;

    #@44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 151
    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    #@49
    .line 155
    new-instance v6, Ljava/lang/String;

    #@4b
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    #@4d
    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@50
    .line 156
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    #@52
    .line 153
    const/4 v4, 0x0

    #@53
    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@56
    .line 158
    .local v0, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v9

    #@5c
    .line 159
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_2

    #@62
    .line 161
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@68
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@6b
    move-result-object v8

    #@6c
    .line 162
    .local v8, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@6f
    .line 163
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@72
    goto :goto_2

    #@73
    .line 166
    .end local v8    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    return-object v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    #@2
    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    #@2
    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    #@2
    return v0
.end method

.method public removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1
    .param p1, "_child"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    .line 92
    return-void
.end method

.method public setCritical(Z)V
    .locals 0
    .param p1, "_critical"    # Z

    #@0
    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    #@2
    .line 97
    return-void
.end method

.method public setExpectedPolicies(Ljava/util/Set;)V
    .locals 0
    .param p1, "expectedPolicies"    # Ljava/util/Set;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@2
    .line 169
    return-void
.end method

.method public setParent(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 0
    .param p1, "_parent"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    #@2
    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "_indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 115
    .local v0, "_buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    .line 116
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 117
    const-string/jumbo v2, " {\n"

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 119
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@16
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    if-ge v1, v2, :cond_0

    #@1c
    .line 121
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    #@1e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "    "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 119
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    .line 125
    const-string/jumbo v2, "}\n"

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    return-object v2
.end method
