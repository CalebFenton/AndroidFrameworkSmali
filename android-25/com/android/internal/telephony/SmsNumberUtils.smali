.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    sput-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@4
    .line 98
    const/4 v0, 0x0

    #@5
    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@7
    .line 101
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 100
    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    #@e
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    #@1
    .line 376
    iget-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    #@3
    .line 377
    .local v3, "number":Ljava/lang/String;
    const/4 v0, -0x1

    #@4
    .line 379
    .local v0, "countryCode":I
    const-string/jumbo v7, "+"

    #@7
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 381
    const/4 v7, 0x1

    #@e
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 382
    .local v6, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_0

    #@18
    .line 384
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1b
    move-result v7

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    .line 385
    .local v4, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    if-lez v0, :cond_5

    #@26
    .line 386
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@28
    .line 387
    const/16 v7, 0x64

    #@2a
    return v7

    #@2b
    .line 389
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_5

    #@31
    .line 390
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@33
    .line 391
    const/16 v7, 0x66

    #@35
    return v7

    #@36
    .line 394
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_2

    #@3c
    .line 396
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 397
    .restart local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    #@47
    move-result v0

    #@48
    if-lez v0, :cond_5

    #@4a
    .line 398
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@4c
    .line 399
    const/16 v7, 0x65

    #@4e
    return v7

    #@4f
    .line 402
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v2

    #@53
    .local v2, "exitCode$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_4

    #@59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Ljava/lang/String;

    #@5f
    .line 403
    .local v1, "exitCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_3

    #@65
    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@68
    move-result v7

    #@69
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .line 405
    .local v5, "numberNoIDD":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    #@70
    move-result v0

    #@71
    if-lez v0, :cond_3

    #@73
    .line 406
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@75
    .line 407
    iput-object v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@77
    .line 408
    const/16 v7, 0x67

    #@79
    return v7

    #@7a
    .line 413
    .end local v1    # "exitCode":Ljava/lang/String;
    .end local v5    # "numberNoIDD":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "0"

    #@7d
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@80
    move-result v7

    #@81
    if-nez v7, :cond_5

    #@83
    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    #@86
    move-result v0

    #@87
    if-lez v0, :cond_5

    #@89
    .line 414
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@8b
    .line 415
    const/16 v7, 0x68

    #@8d
    return v7

    #@8e
    .line 418
    .end local v2    # "exitCode$iterator":Ljava/util/Iterator;
    :cond_5
    return v8
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .locals 14
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0xb

    #@2
    const/4 v9, 0x7

    #@3
    const/4 v12, 0x3

    #@4
    const/4 v11, 0x0

    #@5
    const/4 v10, 0x1

    #@6
    .line 292
    const/4 v5, 0x0

    #@7
    .line 293
    .local v5, "isNANP":Z
    iget-object v6, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    #@9
    .line 295
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@c
    move-result v8

    #@d
    if-ne v8, v9, :cond_2

    #@f
    .line 297
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .line 298
    .local v1, "firstChar":C
    const/16 v8, 0x32

    #@15
    if-lt v1, v8, :cond_0

    #@17
    const/16 v8, 0x39

    #@19
    if-gt v1, v8, :cond_0

    #@1b
    .line 299
    const/4 v5, 0x1

    #@1c
    .line 300
    const/4 v2, 0x1

    #@1d
    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    #@1f
    .line 301
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    .line 302
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    #@26
    move-result v8

    #@27
    if-nez v8, :cond_1

    #@29
    .line 303
    const/4 v5, 0x0

    #@2a
    .line 308
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_8

    #@2c
    .line 309
    return v10

    #@2d
    .line 300
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 311
    .end local v0    # "c":C
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@33
    move-result v8

    #@34
    const/16 v9, 0xa

    #@36
    if-ne v8, v9, :cond_3

    #@38
    .line 313
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_8

    #@3e
    .line 314
    const/4 v8, 0x2

    #@3f
    return v8

    #@40
    .line 316
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@43
    move-result v8

    #@44
    if-ne v8, v13, :cond_4

    #@46
    .line 319
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_8

    #@4c
    .line 320
    return v12

    #@4d
    .line 322
    :cond_4
    const-string/jumbo v8, "+"

    #@50
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_6

    #@56
    .line 323
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5d
    move-result v8

    #@5e
    if-ne v8, v13, :cond_5

    #@60
    .line 327
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    #@63
    move-result v8

    #@64
    if-eqz v8, :cond_8

    #@66
    .line 328
    const/4 v8, 0x4

    #@67
    return v8

    #@68
    .line 330
    :cond_5
    const-string/jumbo v8, "011"

    #@6b
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6e
    move-result v8

    #@6f
    if-eqz v8, :cond_8

    #@71
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@74
    move-result v8

    #@75
    const/16 v9, 0xe

    #@77
    if-ne v8, v9, :cond_8

    #@79
    .line 333
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    .line 334
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    #@80
    move-result v8

    #@81
    if-eqz v8, :cond_8

    #@83
    .line 335
    const/4 v8, 0x6

    #@84
    return v8

    #@85
    .line 340
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v4

    #@89
    .local v4, "idd$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_8

    #@8f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    check-cast v3, Ljava/lang/String;

    #@95
    .line 341
    .local v3, "idd":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@98
    move-result v8

    #@99
    if-eqz v8, :cond_7

    #@9b
    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9e
    move-result v8

    #@9f
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a2
    move-result-object v7

    #@a3
    .line 343
    .local v7, "number2":Ljava/lang/String;
    if-eqz v7, :cond_7

    #@a5
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ac
    move-result v8

    #@ad
    if-eqz v8, :cond_7

    #@af
    .line 344
    invoke-static {v7}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_7

    #@b5
    .line 345
    iput-object v3, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@b7
    .line 346
    const/4 v8, 0x5

    #@b8
    return v8

    #@b9
    .line 353
    .end local v3    # "idd":Ljava/lang/String;
    .end local v4    # "idd$iterator":Ljava/util/Iterator;
    .end local v7    # "number2":Ljava/lang/String;
    :cond_8
    return v11
.end method

.method private static compareGid1(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "serviceGid1"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 626
    .local v0, "gid1":Ljava/lang/String;
    const/4 v2, 0x1

    #@6
    .line 628
    .local v2, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 629
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@e
    if-eqz v3, :cond_0

    #@10
    const-string/jumbo v3, "SmsNumberUtils"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "compareGid1 serviceGid is empty, return "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 630
    :cond_0
    return v2

    #@2b
    .line 633
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    .line 635
    .local v1, "gid_length":I
    if-eqz v0, :cond_2

    #@31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    if-lt v4, v1, :cond_2

    #@37
    .line 636
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v3

    #@3f
    .line 635
    :cond_2
    if-nez v3, :cond_4

    #@41
    .line 637
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@43
    if-eqz v3, :cond_3

    #@45
    const-string/jumbo v3, "SmsNumberUtils"

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, " gid1 "

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, " serviceGid1 "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 638
    :cond_3
    const/4 v2, 0x0

    #@6b
    .line 640
    :cond_4
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@6d
    if-eqz v3, :cond_5

    #@6f
    const-string/jumbo v4, "SmsNumberUtils"

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v5, "compareGid1 is "

    #@7a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    if-eqz v2, :cond_6

    #@80
    const-string/jumbo v3, "Same"

    #@83
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 641
    :cond_5
    return v2

    #@8f
    .line 640
    :cond_6
    const-string/jumbo v3, "Different"

    #@92
    goto :goto_0
.end method

.method public static filterDestAddr(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "destAddr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 531
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    const-string/jumbo v4, "SmsNumberUtils"

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "enter filterDestAddr. destAddr=\""

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v6, "\""

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 533
    :cond_0
    if-eqz p1, :cond_3

    #@28
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@31
    move-result-object v4

    #@32
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@35
    move-result-object v4

    #@36
    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@39
    move-result v5

    #@3a
    .line 538
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 540
    .local v1, "networkOperator":Ljava/lang/String;
    const/4 v3, 0x0

    #@3f
    .line 542
    .local v3, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Lcom/android/internal/telephony/Phone;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_1

    #@45
    .line 543
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Lcom/android/internal/telephony/Phone;)I

    #@48
    move-result v2

    #@49
    .line 544
    .local v2, "networkType":I
    const/4 v4, -0x1

    #@4a
    if-eq v2, v4, :cond_1

    #@4c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_4

    #@52
    .line 552
    .end local v2    # "networkType":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@54
    if-eqz v4, :cond_2

    #@56
    .line 553
    const-string/jumbo v5, "SmsNumberUtils"

    #@59
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "destAddr is "

    #@61
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    if-eqz v3, :cond_5

    #@67
    const-string/jumbo v4, "formatted."

    #@6a
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 554
    const-string/jumbo v5, "SmsNumberUtils"

    #@78
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v6, "leave filterDestAddr, new destAddr=\""

    #@80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    if-eqz v3, :cond_6

    #@86
    move-object v4, v3

    #@87
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    const-string/jumbo v6, "\""

    #@8e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 556
    :cond_2
    if-eqz v3, :cond_7

    #@9b
    :goto_3
    return-object v3

    #@9c
    .line 534
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "SmsNumberUtils"

    #@9f
    new-instance v5, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v6, "destAddr"

    #@a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    const-string/jumbo v6, " is not a global phone number! Nothing changed."

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 535
    return-object p1

    #@be
    .line 545
    .restart local v1    # "networkOperator":Ljava/lang/String;
    .restart local v2    # "networkType":I
    .restart local v3    # "result":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x3

    #@bf
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c2
    move-result-object v0

    #@c3
    .line 546
    .local v0, "networkMcc":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@c5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@c8
    move-result-object v4

    #@c9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@cc
    move-result v4

    #@cd
    if-lez v4, :cond_1

    #@cf
    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@d2
    move-result-object v4

    #@d3
    invoke-static {v4, p1, v0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    #@d6
    move-result-object v3

    #@d7
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_0

    #@d9
    .line 553
    .end local v0    # "networkMcc":Ljava/lang/String;
    .end local v2    # "networkType":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "not formatted."

    #@dc
    goto :goto_1

    #@dd
    :cond_6
    move-object v4, p1

    #@de
    .line 554
    goto :goto_2

    #@df
    :cond_7
    move-object v3, p1

    #@e0
    .line 556
    goto :goto_3
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    #@0
    .prologue
    .line 124
    if-nez p1, :cond_0

    #@2
    .line 125
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v9, "number is null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 128
    :cond_0
    if-eqz p2, :cond_1

    #@d
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@14
    move-result v8

    #@15
    if-nez v8, :cond_2

    #@17
    .line 129
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v9, "activeMcc is null or empty!"

    #@1c
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v8

    #@20
    .line 132
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 133
    .local v5, "networkPortionNumber":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@29
    move-result v8

    #@2a
    if-nez v8, :cond_4

    #@2c
    .line 134
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v9, "Number is invalid!"

    #@31
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v8

    #@35
    .line 137
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    #@37
    invoke-direct {v6, v5}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    #@3a
    .line 138
    .local v6, "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    #@3d
    move-result-object v0

    #@3e
    .line 141
    .local v0, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    #@41
    move-result v4

    #@42
    .line 142
    .local v4, "nanpState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@44
    if-eqz v8, :cond_5

    #@46
    const-string/jumbo v8, "SmsNumberUtils"

    #@49
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "NANP type: "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    #@58
    move-result-object v10

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 144
    :cond_5
    const/4 v8, 0x1

    #@65
    if-eq v4, v8, :cond_6

    #@67
    .line 145
    const/4 v8, 0x2

    #@68
    if-ne v4, v8, :cond_7

    #@6a
    .line 147
    :cond_6
    return-object v5

    #@6b
    .line 146
    :cond_7
    const/4 v8, 0x3

    #@6c
    if-eq v4, v8, :cond_6

    #@6e
    .line 148
    const/4 v8, 0x4

    #@6f
    if-ne v4, v8, :cond_a

    #@71
    .line 149
    const/4 v8, 0x1

    #@72
    if-eq p3, v8, :cond_8

    #@74
    .line 150
    const/4 v8, 0x2

    #@75
    if-ne p3, v8, :cond_9

    #@77
    .line 152
    :cond_8
    const/4 v8, 0x1

    #@78
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    return-object v8

    #@7d
    .line 154
    :cond_9
    return-object v5

    #@7e
    .line 156
    :cond_a
    const/4 v8, 0x5

    #@7f
    if-ne v4, v8, :cond_f

    #@81
    .line 157
    const/4 v8, 0x1

    #@82
    if-ne p3, v8, :cond_b

    #@84
    .line 158
    return-object v5

    #@85
    .line 159
    :cond_b
    if-nez p3, :cond_d

    #@87
    .line 161
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@89
    if-eqz v8, :cond_c

    #@8b
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@8d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@90
    move-result v2

    #@91
    .line 162
    .local v2, "iddLength":I
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v9, "+"

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    return-object v8

    #@aa
    .line 161
    .end local v2    # "iddLength":I
    :cond_c
    const/4 v2, 0x0

    #@ab
    .restart local v2    # "iddLength":I
    goto :goto_0

    #@ac
    .line 163
    .end local v2    # "iddLength":I
    :cond_d
    const/4 v8, 0x2

    #@ad
    if-ne p3, v8, :cond_f

    #@af
    .line 165
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@b1
    if-eqz v8, :cond_e

    #@b3
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@b5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@b8
    move-result v2

    #@b9
    .line 166
    .restart local v2    # "iddLength":I
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    return-object v8

    #@be
    .line 165
    .end local v2    # "iddLength":I
    :cond_e
    const/4 v2, 0x0

    #@bf
    goto :goto_1

    #@c0
    .line 171
    :cond_f
    const-string/jumbo v8, "011"

    #@c3
    .line 170
    invoke-static {p0, v6, v0, v8}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    #@c6
    move-result v3

    #@c7
    .line 172
    .local v3, "internationalState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@c9
    if-eqz v8, :cond_10

    #@cb
    const-string/jumbo v8, "SmsNumberUtils"

    #@ce
    new-instance v9, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v10, "International type: "

    #@d6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    invoke-static {v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v9

    #@e2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v9

    #@e6
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    .line 173
    :cond_10
    const/4 v7, 0x0

    #@ea
    .line 175
    .local v7, "returnNumber":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    #@ed
    .line 213
    const-string/jumbo v8, "+"

    #@f0
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f3
    move-result v8

    #@f4
    if-eqz v8, :cond_12

    #@f6
    .line 214
    const/4 v8, 0x1

    #@f7
    if-eq p3, v8, :cond_11

    #@f9
    const/4 v8, 0x2

    #@fa
    if-ne p3, v8, :cond_12

    #@fc
    .line 215
    :cond_11
    const-string/jumbo v8, "+011"

    #@ff
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@102
    move-result v8

    #@103
    if-eqz v8, :cond_16

    #@105
    .line 217
    const/4 v8, 0x1

    #@106
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@109
    move-result-object v7

    #@10a
    .line 225
    .end local v7    # "returnNumber":Ljava/lang/String;
    :cond_12
    :goto_2
    if-nez v7, :cond_13

    #@10c
    .line 226
    move-object v7, v5

    #@10d
    .line 228
    :cond_13
    return-object v7

    #@10e
    .line 177
    .restart local v7    # "returnNumber":Ljava/lang/String;
    :pswitch_0
    if-nez p3, :cond_12

    #@110
    .line 179
    const/4 v8, 0x1

    #@111
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@114
    move-result-object v7

    #@115
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    #@116
    .line 185
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v9, "011"

    #@11e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v8

    #@122
    const/4 v9, 0x1

    #@123
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@126
    move-result-object v9

    #@127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v8

    #@12b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v7

    #@12f
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    #@130
    .line 189
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_14

    #@132
    const/4 v8, 0x2

    #@133
    if-ne p3, v8, :cond_12

    #@135
    .line 190
    :cond_14
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@137
    if-eqz v8, :cond_15

    #@139
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    #@13b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@13e
    move-result v2

    #@13f
    .line 192
    .restart local v2    # "iddLength":I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v9, "011"

    #@147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v8

    #@14b
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14e
    move-result-object v9

    #@14f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v8

    #@153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v7

    #@157
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    #@158
    .line 190
    .end local v2    # "iddLength":I
    .local v7, "returnNumber":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    #@159
    .restart local v2    # "iddLength":I
    goto :goto_3

    #@15a
    .line 197
    .end local v2    # "iddLength":I
    :pswitch_3
    iget v1, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@15c
    .line 199
    .local v1, "countryCode":I
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    #@15f
    move-result v8

    #@160
    if-nez v8, :cond_12

    #@162
    .line 200
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@165
    move-result v8

    #@166
    const/16 v9, 0xb

    #@168
    if-lt v8, v9, :cond_12

    #@16a
    const/4 v8, 0x1

    #@16b
    if-eq v1, v8, :cond_12

    #@16d
    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v9, "011"

    #@175
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v8

    #@179
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v8

    #@17d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    #@182
    .line 207
    .end local v1    # "countryCode":I
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_4
    move-object v7, v5

    #@183
    .line 208
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    #@184
    .line 220
    .local v7, "returnNumber":Ljava/lang/String;
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v9, "011"

    #@18c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v8

    #@190
    const/4 v9, 0x1

    #@191
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@194
    move-result-object v9

    #@195
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v8

    #@199
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v7

    #@19d
    .local v7, "returnNumber":Ljava/lang/String;
    goto/16 :goto_2

    #@19f
    .line 175
    nop

    #@1a0
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 456
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@6
    return-object v0

    #@7
    .line 460
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 462
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    #@9
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    #@b
    const-string/jumbo v0, "Country_Code"

    #@e
    const/4 v1, 0x0

    #@f
    aput-object v0, v2, v1

    #@11
    .line 463
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    #@17
    .line 464
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    .line 463
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1d
    move-result-object v7

    #@1e
    .line 466
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@21
    move-result v0

    #@22
    if-lez v0, :cond_2

    #@24
    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@27
    move-result v0

    #@28
    new-array v0, v0, [I

    #@2a
    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@2c
    .line 468
    const/4 v9, 0x0

    #@2d
    .local v9, "i":I
    move v10, v9

    #@2e
    .line 469
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 470
    const/4 v0, 0x0

    #@35
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    #@38
    move-result v6

    #@39
    .line 471
    .local v6, "countryCode":I
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@3b
    add-int/lit8 v9, v10, 0x1

    #@3d
    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput v6, v0, v10

    #@3f
    .line 472
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@4a
    move-result v11

    #@4b
    .line 473
    .local v11, "length":I
    sget v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    #@4d
    if-le v11, v0, :cond_1

    #@4f
    .line 474
    sput v11, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    :cond_1
    move v10, v9

    #@52
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    #@53
    .line 481
    .end local v6    # "countryCode":I
    .end local v10    # "i":I
    .end local v11    # "length":I
    :cond_2
    if-eqz v7, :cond_3

    #@55
    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@58
    .line 485
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    #@5a
    return-object v0

    #@5b
    .line 478
    :catch_0
    move-exception v8

    #@5c
    .line 479
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string/jumbo v0, "SmsNumberUtils"

    #@5f
    const-string/jumbo v1, "Can\'t access HbpcdLookup database"

    #@62
    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 481
    if-eqz v7, :cond_3

    #@67
    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@6a
    goto :goto_1

    #@6b
    .line 480
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    #@6c
    .line 481
    if-eqz v7, :cond_4

    #@6e
    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@71
    .line 480
    :cond_4
    throw v0
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 239
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Ljava/util/ArrayList;

    #@a
    .line 240
    .local v6, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    #@c
    .line 241
    return-object v6

    #@d
    .line 243
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    #@f
    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 246
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    #@13
    new-array v2, v0, [Ljava/lang/String;

    #@15
    const-string/jumbo v0, "IDD"

    #@18
    aput-object v0, v2, v1

    #@1a
    const-string/jumbo v0, "MCC"

    #@1d
    aput-object v0, v2, v5

    #@1f
    .line 247
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    #@20
    .line 251
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    #@21
    .line 252
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    #@23
    .line 253
    const-string/jumbo v3, "MCC=?"

    #@26
    .line 254
    .local v3, "where":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    #@28
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    #@2a
    .line 257
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    #@2b
    .line 259
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v0

    #@2f
    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    #@31
    .line 260
    const/4 v5, 0x0

    #@32
    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@35
    move-result-object v7

    #@36
    .line 261
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@39
    move-result v0

    #@3a
    if-lez v0, :cond_5

    #@3c
    .line 262
    :cond_2
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 263
    const/4 v0, 0x0

    #@43
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    .line 264
    .local v9, "idd":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_2

    #@4d
    .line 265
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 269
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "idd":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@52
    .line 270
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string/jumbo v0, "SmsNumberUtils"

    #@55
    const-string/jumbo v1, "Can\'t access HbpcdLookup database"

    #@58
    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 272
    if-eqz v7, :cond_3

    #@5d
    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@60
    .line 277
    .end local v8    # "e":Landroid/database/SQLException;
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    #@62
    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 279
    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@67
    if-eqz v0, :cond_4

    #@69
    const-string/jumbo v0, "SmsNumberUtils"

    #@6c
    new-instance v1, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v5, "MCC = "

    #@74
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string/jumbo v5, ", all IDDs = "

    #@7f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 280
    :cond_4
    return-object v6

    #@8f
    .line 272
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v7, :cond_3

    #@91
    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@94
    goto :goto_1

    #@95
    .line 271
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    #@96
    .line 272
    if-eqz v7, :cond_6

    #@98
    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@9b
    .line 271
    :cond_6
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 425
    const/4 v2, -0x1

    #@1
    .line 426
    .local v2, "countryCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v6

    #@5
    const/16 v7, 0xa

    #@7
    if-lt v6, v7, :cond_5

    #@9
    .line 428
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    #@c
    move-result-object v0

    #@d
    .line 429
    .local v0, "allCCs":[I
    if-nez v0, :cond_0

    #@f
    .line 430
    return v2

    #@10
    .line 433
    :cond_0
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    #@12
    new-array v1, v6, [I

    #@14
    .line 434
    .local v1, "ccArray":[I
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    #@17
    if-ge v3, v6, :cond_1

    #@19
    .line 435
    add-int/lit8 v6, v3, 0x1

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v6

    #@24
    aput v6, v1, v3

    #@26
    .line 434
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 438
    :cond_1
    const/4 v3, 0x0

    #@2a
    :goto_1
    array-length v6, v0

    #@2b
    if-ge v3, v6, :cond_5

    #@2d
    .line 439
    aget v5, v0, v3

    #@2f
    .line 440
    .local v5, "tempCC":I
    const/4 v4, 0x0

    #@30
    .local v4, "j":I
    :goto_2
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    #@32
    if-ge v4, v6, :cond_4

    #@34
    .line 441
    aget v6, v1, v4

    #@36
    if-ne v5, v6, :cond_3

    #@38
    .line 442
    sget-boolean v6, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@3a
    if-eqz v6, :cond_2

    #@3c
    const-string/jumbo v6, "SmsNumberUtils"

    #@3f
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "Country code = "

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 443
    :cond_2
    return v5

    #@57
    .line 440
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 438
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 449
    .end local v0    # "allCCs":[I
    .end local v1    # "ccArray":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "tempCC":I
    :cond_5
    return v2
.end method

.method private static getNetworkType(Lcom/android/internal/telephony/Phone;)I
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 563
    const/4 v0, -0x1

    #@1
    .line 564
    .local v0, "networkType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@4
    move-result v1

    #@5
    .line 566
    .local v1, "phoneType":I
    const/4 v2, 0x1

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 567
    const/4 v0, 0x0

    #@9
    .line 578
    :cond_0
    :goto_0
    return v0

    #@a
    .line 568
    :cond_1
    const/4 v2, 0x2

    #@b
    if-ne v1, v2, :cond_3

    #@d
    .line 569
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 570
    const/4 v0, 0x2

    #@14
    goto :goto_0

    #@15
    .line 572
    :cond_2
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 575
    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    const-string/jumbo v2, "SmsNumberUtils"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "warning! unknown mPhoneType value="

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    #@0
    .prologue
    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Number Plan type ("

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "): "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 499
    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    #@1c
    if-ne p0, v1, :cond_0

    #@1e
    .line 500
    const-string/jumbo v0, "NP_NANP_LOCAL"

    #@21
    .line 524
    :goto_0
    return-object v0

    #@22
    .line 501
    :cond_0
    const/4 v1, 0x2

    #@23
    if-ne p0, v1, :cond_1

    #@25
    .line 502
    const-string/jumbo v0, "NP_NANP_AREA_LOCAL"

    #@28
    goto :goto_0

    #@29
    .line 503
    :cond_1
    const/4 v1, 0x3

    #@2a
    if-ne p0, v1, :cond_2

    #@2c
    .line 504
    const-string/jumbo v0, "NP_NANP_NDD_AREA_LOCAL"

    #@2f
    goto :goto_0

    #@30
    .line 505
    :cond_2
    const/4 v1, 0x4

    #@31
    if-ne p0, v1, :cond_3

    #@33
    .line 506
    const-string/jumbo v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    #@36
    goto :goto_0

    #@37
    .line 507
    :cond_3
    const/4 v1, 0x5

    #@38
    if-ne p0, v1, :cond_4

    #@3a
    .line 508
    const-string/jumbo v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    #@3d
    goto :goto_0

    #@3e
    .line 509
    :cond_4
    const/4 v1, 0x6

    #@3f
    if-ne p0, v1, :cond_5

    #@41
    .line 510
    const-string/jumbo v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    #@44
    goto :goto_0

    #@45
    .line 511
    :cond_5
    const/16 v1, 0x64

    #@47
    if-ne p0, v1, :cond_6

    #@49
    .line 512
    const-string/jumbo v0, "NP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    #@4c
    goto :goto_0

    #@4d
    .line 513
    :cond_6
    const/16 v1, 0x65

    #@4f
    if-ne p0, v1, :cond_7

    #@51
    .line 514
    const-string/jumbo v0, "NP_HOMEIDD_CC_AREA_LOCAL"

    #@54
    goto :goto_0

    #@55
    .line 515
    :cond_7
    const/16 v1, 0x66

    #@57
    if-ne p0, v1, :cond_8

    #@59
    .line 516
    const-string/jumbo v0, "NP_NBPCD_CC_AREA_LOCAL"

    #@5c
    goto :goto_0

    #@5d
    .line 517
    :cond_8
    const/16 v1, 0x67

    #@5f
    if-ne p0, v1, :cond_9

    #@61
    .line 518
    const-string/jumbo v0, "NP_LOCALIDD_CC_AREA_LOCAL"

    #@64
    goto :goto_0

    #@65
    .line 519
    :cond_9
    const/16 v1, 0x68

    #@67
    if-ne p0, v1, :cond_a

    #@69
    .line 520
    const-string/jumbo v0, "NP_CC_AREA_LOCAL"

    #@6c
    goto :goto_0

    #@6d
    .line 522
    :cond_a
    const-string/jumbo v0, "Unknown type"

    #@70
    goto :goto_0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .locals 5
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 489
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    #@4
    .line 490
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0xc

    #@c
    if-ne v3, v4, :cond_2

    #@e
    .line 491
    const/4 v3, 0x7

    #@f
    if-eq v0, v3, :cond_0

    #@11
    const/16 v3, 0x14

    #@13
    if-ne v0, v3, :cond_1

    #@15
    .line 493
    .local v1, "result":Z
    :cond_0
    :goto_0
    return v1

    #@16
    .line 492
    .end local v1    # "result":Z
    :cond_1
    const/16 v3, 0x41

    #@18
    if-eq v0, v3, :cond_0

    #@1a
    const/16 v3, 0x5a

    #@1c
    if-eq v0, v3, :cond_0

    #@1e
    move v1, v2

    #@1f
    goto :goto_0

    #@20
    :cond_2
    move v1, v2

    #@21
    .line 490
    goto :goto_0
.end method

.method private static isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@4
    move-result-object v4

    #@5
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@8
    move-result-object v4

    #@9
    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@c
    move-result v5

    #@d
    .line 582
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 584
    .local v1, "operatorIsoCountry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@14
    move-result-object v4

    #@15
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@18
    move-result-object v4

    #@19
    .line 585
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@1c
    move-result v5

    #@1d
    .line 584
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 586
    .local v2, "simIsoCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_0

    #@27
    .line 587
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_2

    #@2d
    :cond_0
    move v0, v3

    #@2e
    .line 589
    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_1

    #@30
    .line 590
    const-string/jumbo v3, "us"

    #@33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_5

    #@39
    .line 591
    const-string/jumbo v3, "vi"

    #@3c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_4

    #@42
    const/4 v0, 0x0

    #@43
    .line 596
    .end local v0    # "internationalRoaming":Z
    :cond_1
    :goto_1
    return v0

    #@44
    .line 588
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    :goto_2
    move v0, v3

    #@4b
    goto :goto_0

    #@4c
    :cond_3
    const/4 v3, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 591
    .restart local v0    # "internationalRoaming":Z
    :cond_4
    const/4 v0, 0x1

    #@4f
    .local v0, "internationalRoaming":Z
    goto :goto_1

    #@50
    .line 592
    .local v0, "internationalRoaming":Z
    :cond_5
    const-string/jumbo v3, "vi"

    #@53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_1

    #@59
    .line 593
    const-string/jumbo v3, "us"

    #@5c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_6

    #@62
    const/4 v0, 0x0

    #@63
    .local v0, "internationalRoaming":Z
    goto :goto_1

    #@64
    .local v0, "internationalRoaming":Z
    :cond_6
    const/4 v0, 0x1

    #@65
    .local v0, "internationalRoaming":Z
    goto :goto_1
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0xb

    #@2
    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xa

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-ne v0, v2, :cond_2

    #@10
    const-string/jumbo v0, "1"

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    .line 357
    if-eqz v0, :cond_2

    #@19
    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result v0

    #@1d
    if-ne v0, v2, :cond_1

    #@1f
    .line 360
    const/4 v0, 0x1

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    .line 362
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    return v0

    #@29
    .line 364
    :cond_2
    const/4 v0, 0x0

    #@2a
    return v0
.end method

.method private static needToConvert(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 600
    const/4 v0, 0x0

    #@3
    .line 601
    .local v0, "bNeedToConvert":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v4

    #@b
    .line 602
    const v5, 0x1070046

    #@e
    .line 601
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 604
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    #@14
    array-length v4, v2

    #@15
    if-lez v4, :cond_2

    #@17
    .line 605
    const/4 v1, 0x0

    #@18
    .end local v0    # "bNeedToConvert":Z
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@19
    if-ge v1, v4, :cond_2

    #@1b
    .line 606
    aget-object v4, v2, v1

    #@1d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_0

    #@23
    .line 607
    aget-object v4, v2, v1

    #@25
    const-string/jumbo v5, ";"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 608
    .local v3, "needToConvertArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    #@2e
    array-length v4, v3

    #@2f
    if-lez v4, :cond_0

    #@31
    .line 609
    array-length v4, v3

    #@32
    if-ne v4, v7, :cond_1

    #@34
    .line 610
    const-string/jumbo v4, "true"

    #@37
    aget-object v5, v3, v6

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3c
    move-result v0

    #@3d
    .line 605
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 611
    .restart local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_1
    array-length v4, v3

    #@41
    const/4 v5, 0x2

    #@42
    if-ne v4, v5, :cond_0

    #@44
    .line 612
    aget-object v4, v3, v7

    #@46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_0

    #@4c
    .line 613
    aget-object v4, v3, v7

    #@4e
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->compareGid1(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    #@51
    move-result v4

    #@52
    .line 611
    if-eqz v4, :cond_0

    #@54
    .line 614
    const-string/jumbo v4, "true"

    #@57
    aget-object v5, v3, v6

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5c
    move-result v0

    #@5d
    .line 621
    .end local v1    # "i":I
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_2
    return v0
.end method
