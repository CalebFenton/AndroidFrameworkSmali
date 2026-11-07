.class public abstract Lgov/nist/javax/sip/header/ParametersHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljava/io/Serializable;


# instance fields
.field protected greylist duplicates:Lgov/nist/core/DuplicateNameValueList;

.field protected greylist parameters:Lgov/nist/core/NameValueList;


# direct methods
.method protected constructor greylist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 59
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 60
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 61
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "hdrName"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 66
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 67
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0, p2}, Lgov/nist/core/NameValueList;-><init>(Z)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 72
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 464
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ParametersHeader;

    .line 465
    .local v0, "retval":Lgov/nist/javax/sip/header/ParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_14

    .line 466
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 467
    :cond_14
    return-object v0
.end method

.method protected abstract greylist encodeBody()Ljava/lang/String;
.end method

.method protected final greylist equalParameters(Ljavax/sip/header/Parameters;)Z
    .registers 10
    .param p1, "other"    # Ljavax/sip/header/Parameters;

    .line 577
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 579
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 582
    .local v2, "pname":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "p1":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "p2":Ljava/lang/String;
    if-nez v4, :cond_21

    move v6, v0

    goto :goto_22

    :cond_21
    move v6, v3

    :goto_22
    if-nez v5, :cond_26

    move v7, v0

    goto :goto_27

    :cond_26
    move v7, v3

    :goto_27
    xor-int/2addr v6, v7

    if-eqz v6, :cond_2b

    return v3

    .line 588
    :cond_2b
    if-eqz v4, :cond_34

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    return v3

    .line 589
    .end local v2    # "pname":Ljava/lang/String;
    .end local v4    # "p1":Ljava/lang/String;
    .end local v5    # "p2":Ljava/lang/String;
    :cond_34
    goto :goto_8

    .line 592
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_35
    invoke-interface {p1}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 595
    .restart local v2    # "pname":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .restart local v4    # "p1":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .restart local v5    # "p2":Ljava/lang/String;
    if-nez v4, :cond_51

    move v6, v0

    goto :goto_52

    :cond_51
    move v6, v3

    :goto_52
    if-nez v5, :cond_56

    move v7, v0

    goto :goto_57

    :cond_56
    move v7, v3

    :goto_57
    xor-int/2addr v6, v7

    if-eqz v6, :cond_5b

    return v3

    .line 606
    :cond_5b
    if-eqz v4, :cond_64

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_64

    return v3

    .line 607
    .end local v2    # "pname":Ljava/lang/String;
    .end local v4    # "p1":Ljava/lang/String;
    .end local v5    # "p2":Ljava/lang/String;
    :cond_64
    goto :goto_39

    .line 609
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_65
    return v0
.end method

.method public greylist getMultiParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMultiParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMultiParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMultiParameters()Lgov/nist/core/DuplicateNameValueList;
    .registers 2

    .line 509
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-object v0
.end method

.method public greylist getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .registers 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getParameterAsBoolean(Ljava/lang/String;)Z
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 442
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "val":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 444
    return v1

    .line 445
    :cond_8
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    .line 446
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 447
    :cond_14
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 448
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 450
    :cond_24
    return v1
.end method

.method protected greylist getParameterAsFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 375
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_26

    .line 377
    :try_start_8
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 378
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 380
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_23} :catch_24

    .line 380
    return v0

    .line 383
    :catch_24
    move-exception v0

    .line 384
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v1

    .line 387
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_26
    return v1
.end method

.method protected greylist getParameterAsHexInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_28

    .line 352
    :try_start_7
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 353
    nop

    .line 354
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 357
    :cond_1b
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_25} :catch_26

    .line 357
    return v0

    .line 360
    :catch_26
    move-exception v0

    .line 361
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v1

    .line 364
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_28
    return v1
.end method

.method protected greylist getParameterAsInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    .line 330
    :try_start_7
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 331
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 333
    :cond_18
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_22} :catch_23

    .line 333
    return v0

    .line 336
    :catch_23
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v1

    .line 340
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_25
    return v1
.end method

.method protected greylist getParameterAsLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 398
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_26

    .line 400
    :try_start_8
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 401
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 403
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 404
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_23} :catch_24

    .line 403
    return-wide v0

    .line 406
    :catch_24
    move-exception v0

    .line 407
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-wide v1

    .line 410
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_26
    return-wide v1
.end method

.method protected greylist getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .registers 5
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 422
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_c

    .line 424
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    return-object v1

    .line 427
    :cond_c
    :try_start_c
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_14} :catch_15

    return-object v1

    .line 428
    :catch_15
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist getParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .line 300
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist hasMultiParameter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist hasMultiParameters()Z
    .registers 2

    .line 540
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist hasParameter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist hasParameters()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist removeMultiParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->delete(Ljava/lang/String;)Z

    .line 553
    return-void
.end method

.method public greylist removeMultiParameters()V
    .registers 2

    .line 570
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 571
    return-void
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.method public greylist removeParameters()V
    .registers 2

    .line 292
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 293
    return-void
.end method

.method public greylist setMultiParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 494
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 495
    return-void
.end method

.method public greylist setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 483
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0}, Lgov/nist/core/NameValue;-><init>()V

    .line 484
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 487
    return-void
.end method

.method public greylist setParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 308
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 309
    return-void
.end method

.method protected greylist setParameter(Ljava/lang/String;F)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 245
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 246
    .local v0, "val":Ljava/lang/Float;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 247
    .local v1, "nv":Lgov/nist/core/NameValue;
    if-eqz v1, :cond_10

    .line 248
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_1b

    .line 250
    :cond_10
    new-instance v2, Lgov/nist/core/NameValue;

    invoke-direct {v2, p1, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    .line 251
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 253
    :goto_1b
    return-void
.end method

.method protected greylist setParameter(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected greylist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 150
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_c

    .line 151
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_17

    .line 153
    :cond_c
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 154
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 156
    :goto_17
    return-void
.end method

.method protected greylist setParameter(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 226
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, "val":Ljava/lang/Boolean;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public greylist setParameters(Lgov/nist/core/NameValueList;)V
    .registers 2
    .param p1, "parameters"    # Lgov/nist/core/NameValueList;

    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 318
    return-void
.end method

.method public greylist setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 179
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_f

    .line 180
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    goto :goto_1d

    .line 183
    :cond_f
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 184
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 185
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 187
    :goto_1d
    return-void
.end method
