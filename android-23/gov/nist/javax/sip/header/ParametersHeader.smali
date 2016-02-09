.class public abstract Lgov/nist/javax/sip/header/ParametersHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljava/io/Serializable;


# instance fields
.field protected duplicates:Lgov/nist/core/DuplicateNameValueList;

.field protected parameters:Lgov/nist/core/NameValueList;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    #@3
    .line 59
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@a
    .line 60
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    #@c
    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@11
    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@a
    .line 66
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    #@c
    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@11
    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 71
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0, p2}, Lgov/nist/core/NameValueList;-><init>(Z)V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@a
    .line 72
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    #@c
    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@11
    .line 69
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 464
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ParametersHeader;

    #@6
    .line 465
    .local v0, "retval":Lgov/nist/javax/sip/header/ParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 466
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/NameValueList;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@14
    .line 467
    :cond_0
    return-object v0
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected final equalParameters(Ljavax/sip/header/Parameters;)Z
    .locals 8
    .param p1, "other"    # Ljavax/sip/header/Parameters;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 577
    if-ne p0, p1, :cond_0

    #@4
    return v5

    #@5
    .line 579
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_5

    #@f
    .line 580
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/lang/String;

    #@15
    .line 582
    .local v3, "pname":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 583
    .local v1, "p1":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 587
    .local v2, "p2":Ljava/lang/String;
    if-nez v1, :cond_2

    #@1f
    move v7, v5

    #@20
    :goto_0
    if-nez v2, :cond_3

    #@22
    move v4, v5

    #@23
    :goto_1
    xor-int/2addr v4, v7

    #@24
    if-eqz v4, :cond_4

    #@26
    return v6

    #@27
    :cond_2
    move v7, v6

    #@28
    goto :goto_0

    #@29
    :cond_3
    move v4, v6

    #@2a
    goto :goto_1

    #@2b
    .line 588
    :cond_4
    if-eqz v1, :cond_1

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_1

    #@33
    return v6

    #@34
    .line 592
    .end local v1    # "p1":Ljava/lang/String;
    .end local v2    # "p2":Ljava/lang/String;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    #@37
    move-result-object v0

    #@38
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_a

    #@3e
    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Ljava/lang/String;

    #@44
    .line 595
    .restart local v3    # "pname":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 596
    .restart local v1    # "p1":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 605
    .restart local v2    # "p2":Ljava/lang/String;
    if-nez v1, :cond_7

    #@4e
    move v7, v5

    #@4f
    :goto_2
    if-nez v2, :cond_8

    #@51
    move v4, v5

    #@52
    :goto_3
    xor-int/2addr v4, v7

    #@53
    if-eqz v4, :cond_9

    #@55
    return v6

    #@56
    :cond_7
    move v7, v6

    #@57
    goto :goto_2

    #@58
    :cond_8
    move v4, v6

    #@59
    goto :goto_3

    #@5a
    .line 606
    :cond_9
    if-eqz v1, :cond_6

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5f
    move-result v4

    #@60
    if-nez v4, :cond_6

    #@62
    return v6

    #@63
    .line 609
    .end local v1    # "p1":Ljava/lang/String;
    .end local v2    # "p2":Ljava/lang/String;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_a
    return v5
.end method

.method public getMultiParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMultiParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->getNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMultiParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMultiParameters()Lgov/nist/core/DuplicateNameValueList;
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getParameterAsBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 443
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    .line 444
    return v2

    #@8
    .line 445
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 446
    check-cast v0, Ljava/lang/Boolean;

    #@e
    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 447
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 448
    check-cast v0, Ljava/lang/String;

    #@19
    .end local v0    # "val":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 450
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_2
    return v2
.end method

.method protected getParameterAsFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    #@2
    .line 375
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 377
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    instance-of v1, v1, Ljava/lang/String;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 378
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/Float;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 383
    :catch_0
    move-exception v0

    #@25
    .line 384
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v2

    #@26
    .line 387
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return v2
.end method

.method protected getParameterAsHexInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 350
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    instance-of v1, v1, Ljava/lang/String;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 354
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 355
    const/16 v2, 0x10

    #@15
    .line 353
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 357
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/Integer;

    #@20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 360
    :catch_0
    move-exception v0

    #@26
    .line 361
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v3

    #@27
    .line 364
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return v3
.end method

.method protected getParameterAsInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 328
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 330
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    instance-of v1, v1, Ljava/lang/String;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 331
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 336
    :catch_0
    move-exception v0

    #@24
    .line 337
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v2

    #@25
    .line 340
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return v2
.end method

.method protected getParameterAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 398
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    instance-of v1, v1, Ljava/lang/String;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 401
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@17
    move-result-wide v2

    #@18
    return-wide v2

    #@19
    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/Long;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-wide v2

    #@23
    return-wide v2

    #@24
    .line 406
    :catch_0
    move-exception v0

    #@25
    .line 407
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-wide v2

    #@26
    .line 410
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    return-wide v2
.end method

.method protected getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 423
    .local v1, "val":Ljava/lang/Object;
    instance-of v2, v1, Lgov/nist/javax/sip/address/GenericURI;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 424
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@a
    .end local v1    # "val":Ljava/lang/Object;
    return-object v1

    #@b
    .line 427
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/address/GenericURI;

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .end local v1    # "val":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    return-object v2

    #@13
    .line 428
    :catch_0
    move-exception v0

    #@14
    .line 430
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    #@15
    return-object v2
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public hasMultiParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->hasNameValue(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasMultiParameters()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 540
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@7
    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasParameters()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public removeMultiParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->delete(Ljava/lang/String;)Z

    #@5
    .line 551
    return-void
.end method

.method public removeMultiParameters()V
    .locals 1

    #@0
    .prologue
    .line 570
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@7
    .line 569
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@5
    .line 126
    return-void
.end method

.method public removeParameters()V
    .locals 1

    #@0
    .prologue
    .line 292
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@7
    .line 291
    return-void
.end method

.method public setMultiParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 493
    return-void
.end method

.method public setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 483
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValue;-><init>()V

    #@5
    .line 484
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    #@8
    .line 485
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    #@b
    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@d
    invoke-virtual {v1, v0}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    #@10
    .line 481
    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 307
    return-void
.end method

.method protected setParameter(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 245
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3
    move-result-object v1

    #@4
    .line 246
    .local v1, "val":Ljava/lang/Float;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@6
    invoke-virtual {v2, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@9
    move-result-object v0

    #@a
    .line 247
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    #@c
    .line 248
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@f
    .line 244
    :goto_0
    return-void

    #@10
    .line 250
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    #@12
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@15
    .line 251
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@17
    invoke-virtual {v2, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@1a
    goto :goto_0
.end method

.method protected setParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@6
    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 204
    return-void
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 273
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    .line 150
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    #@8
    .line 151
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@b
    .line 148
    :goto_0
    return-void

    #@c
    .line 153
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    #@e
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 154
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@13
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@16
    goto :goto_0
.end method

.method protected setParameter(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 226
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    .line 227
    .local v0, "val":Ljava/lang/Boolean;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@6
    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 225
    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parameters"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    .line 316
    return-void
.end method

.method public setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    .line 179
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    #@8
    .line 180
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@b
    .line 181
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@e
    .line 177
    :goto_0
    return-void

    #@f
    .line 183
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    #@11
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@14
    .line 184
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@17
    .line 185
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@19
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@1c
    goto :goto_0
.end method
