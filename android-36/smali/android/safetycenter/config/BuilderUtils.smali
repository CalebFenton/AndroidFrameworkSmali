.class final Landroid/safetycenter/config/BuilderUtils;
.super Ljava/lang/Object;
.source "BuilderUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist throwProhibitedAttributePresent(Ljava/lang/String;)V
    .registers 4
    .param p0, "attribute"    # Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prohibited attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist throwRequiredAttributeInvalid(Ljava/lang/String;)V
    .registers 4
    .param p0, "attribute"    # Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist throwRequiredAttributeMissing(Ljava/lang/String;)V
    .registers 4
    .param p0, "attribute"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZ)V
    .registers 5
    .param p0, "attribute"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 59
    return-void
.end method

.method private static blacklist validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V
    .registers 7
    .param p0, "attribute"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z
    .param p4, "defaultValue"    # Ljava/lang/Object;

    .line 43
    if-nez p0, :cond_7

    if-eqz p2, :cond_7

    .line 44
    invoke-static {p1}, Landroid/safetycenter/config/BuilderUtils;->throwRequiredAttributeMissing(Ljava/lang/String;)V

    .line 46
    :cond_7
    invoke-static {p0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 47
    .local v0, "nonDefaultValueProvided":Z
    if-eqz p3, :cond_12

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 48
    .local v1, "checkProhibited":Z
    :goto_13
    if-eqz p0, :cond_1a

    if-eqz v1, :cond_1a

    .line 49
    invoke-static {p1}, Landroid/safetycenter/config/BuilderUtils;->throwProhibitedAttributePresent(Ljava/lang/String;)V

    .line 51
    :cond_1a
    return-void
.end method

.method static blacklist validateBoolean(Ljava/lang/Boolean;Ljava/lang/String;ZZZ)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z
    .param p4, "defaultValue"    # Z

    .line 129
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 130
    if-nez p0, :cond_a

    .line 131
    return p4

    .line 133
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static blacklist validateCollection(Ljava/util/Collection;Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 149
    .local p0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 150
    invoke-static {p1}, Landroid/safetycenter/config/BuilderUtils;->throwRequiredAttributeMissing(Ljava/lang/String;)V

    .line 152
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p3, :cond_16

    .line 153
    invoke-static {p1}, Landroid/safetycenter/config/BuilderUtils;->throwProhibitedAttributePresent(Ljava/lang/String;)V

    .line 155
    :cond_16
    return-void
.end method

.method static blacklist validateId(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 67
    const-string v0, "[0-9a-zA-Z_]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    return-void

    .line 68
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static varargs blacklist validateIntDef(Ljava/lang/Integer;Ljava/lang/String;ZZI[I)I
    .registers 10
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z
    .param p4, "defaultValue"    # I
    .param p5, "validValues"    # [I

    .line 95
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 96
    if-nez p0, :cond_a

    .line 97
    return p4

    .line 100
    :cond_a
    const/4 v0, 0x0

    .line 101
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p5

    if-ge v1, v2, :cond_1e

    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v3, p5, v1

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v0, v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 104
    .end local v1    # "i":I
    :cond_1e
    if-eqz v0, :cond_25

    .line 107
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 105
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist validateInteger(Ljava/lang/Integer;Ljava/lang/String;ZZI)I
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z
    .param p4, "defaultValue"    # I

    .line 116
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 117
    if-nez p0, :cond_a

    .line 118
    return p4

    .line 120
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static blacklist validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I
    .registers 6
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "prohibited"    # Z

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, p2, p3, v1}, Landroid/safetycenter/config/BuilderUtils;->validateAttribute(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 79
    if-nez p0, :cond_b

    .line 80
    return v0

    .line 82
    :cond_b
    if-eqz p2, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_16

    .line 83
    invoke-static {p1}, Landroid/safetycenter/config/BuilderUtils;->throwRequiredAttributeInvalid(Ljava/lang/String;)V

    .line 85
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
