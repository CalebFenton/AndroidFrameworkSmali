.class public Lcom/android/org/conscrypt/ct/PolicyImpl;
.super Ljava/lang/Object;
.source "PolicyImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/Policy;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist conformEmbeddedSCTs(Ljava/util/Set;Ljava/security/cert/X509Certificate;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 20
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;
    .param p3, "atTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "J)",
            "Lcom/android/org/conscrypt/ct/PolicyCompliance;"
        }
    .end annotation

    .line 140
    .local p1, "embeddedValidSCTs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    move-wide/from16 v0, p3

    const/4 v2, 0x0

    .line 141
    .local v2, "found":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 142
    .local v4, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v5

    .line 143
    .local v5, "log":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v5, v0, v1}, Lcom/android/org/conscrypt/ct/LogInfo;->getStateAt(J)I

    move-result v6

    packed-switch v6, :pswitch_data_c0

    goto :goto_20

    .line 147
    :pswitch_1f
    const/4 v2, 0x1

    .line 149
    .end local v4    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .end local v5    # "log":Lcom/android/org/conscrypt/ct/LogInfo;
    :goto_20
    goto :goto_7

    .line 150
    :cond_21
    if-nez v2, :cond_26

    .line 151
    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v3

    .line 162
    :cond_26
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 164
    .local v3, "validLogs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/LogInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 165
    .local v4, "certLifetimeMs":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 166
    .local v6, "certLifetimeDays":J
    const-wide/16 v8, 0xb4

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4c

    .line 167
    const/4 v8, 0x2

    .local v8, "numberSCTsRequired":I
    goto :goto_4d

    .line 169
    .end local v8    # "numberSCTsRequired":I
    :cond_4c
    const/4 v8, 0x3

    .line 171
    .restart local v8    # "numberSCTsRequired":I
    :goto_4d
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_51
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 172
    .local v10, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v10}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v11

    .line 173
    .local v11, "log":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v11, v0, v1}, Lcom/android/org/conscrypt/ct/LogInfo;->getStateAt(J)I

    move-result v12

    packed-switch v12, :pswitch_data_ca

    goto :goto_6c

    .line 178
    :pswitch_69
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v10    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .end local v11    # "log":Lcom/android/org/conscrypt/ct/LogInfo;
    :goto_6c
    goto :goto_51

    .line 181
    :cond_6d
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    if-ge v9, v8, :cond_76

    .line 182
    sget-object v9, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v9

    .line 189
    :cond_76
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v9, "operators":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 191
    .local v11, "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v11}, Lcom/android/org/conscrypt/ct/LogInfo;->getOperator()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v11    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    goto :goto_7f

    .line 193
    :cond_93
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_9d

    .line 194
    sget-object v10, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v10

    .line 200
    :cond_9d
    const/4 v10, 0x0

    .line 201
    .local v10, "foundRfc6962Log":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 202
    .local v12, "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v12}, Lcom/android/org/conscrypt/ct/LogInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b7

    .line 203
    const/4 v10, 0x1

    .line 204
    goto :goto_b8

    .line 206
    .end local v12    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    :cond_b7
    goto :goto_a2

    .line 207
    :cond_b8
    :goto_b8
    if-nez v10, :cond_bd

    .line 208
    sget-object v11, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v11

    .line 211
    :cond_bd
    sget-object v11, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v11

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x2
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private blacklist conformOCSPorTLSSCTs(Ljava/util/Set;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 11
    .param p2, "atTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;J)",
            "Lcom/android/org/conscrypt/ct/PolicyCompliance;"
        }
    .end annotation

    .line 219
    .local p1, "ocspOrTLSValidSCTs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v0, "validLogs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/LogInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 221
    .local v2, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v3

    .line 222
    .local v3, "log":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v3, p2, p3}, Lcom/android/org/conscrypt/ct/LogInfo;->getStateAt(J)I

    move-result v4

    packed-switch v4, :pswitch_data_78

    goto :goto_24

    .line 226
    :pswitch_21
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v2    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .end local v3    # "log":Lcom/android/org/conscrypt/ct/LogInfo;
    :goto_24
    goto :goto_9

    .line 229
    :cond_25
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2f

    .line 230
    sget-object v1, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v1

    .line 236
    :cond_2f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v1, "operators":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 238
    .local v4, "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/LogInfo;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    goto :goto_38

    .line 240
    :cond_4c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v3, v2, :cond_55

    .line 241
    sget-object v2, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v2

    .line 247
    :cond_55
    const/4 v2, 0x0

    .line 248
    .local v2, "foundRfc6962Log":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 249
    .restart local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/LogInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6f

    .line 250
    const/4 v2, 0x1

    .line 251
    goto :goto_70

    .line 253
    .end local v4    # "logInfo":Lcom/android/org/conscrypt/ct/LogInfo;
    :cond_6f
    goto :goto_5a

    .line 254
    :cond_70
    :goto_70
    if-nez v2, :cond_75

    .line 255
    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NO_RFC6962_LOG:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v3

    .line 258
    :cond_75
    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    return-object v3

    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist filterOutAfterRetired(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    .line 116
    return-void

    .line 118
    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getSct()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getTimestamp()J

    move-result-wide v0

    .line 119
    .local v0, "minTimestamp":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 120
    .local v3, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getSct()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getTimestamp()J

    move-result-wide v4

    .line 121
    .local v4, "ts":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_34

    .line 122
    move-wide v0, v4

    .line 124
    .end local v3    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .end local v4    # "ts":J
    :cond_34
    goto :goto_1b

    .line 125
    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 128
    .restart local v3    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/LogInfo;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5f

    .line 129
    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/LogInfo;->getStateTimestamp()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_5f

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 132
    .end local v3    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    :cond_5f
    goto :goto_39

    .line 133
    :cond_60
    return-void
.end method

.method private blacklist filterOutUnknown(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/VerifiedSCT;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 98
    .local v1, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getLogInfo()Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/LogInfo;->getState()I

    move-result v2

    if-nez v2, :cond_1d

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 101
    .end local v1    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    :cond_1d
    goto :goto_4

    .line 102
    :cond_1e
    return-void
.end method


# virtual methods
.method public blacklist doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 6
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "now":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/org/conscrypt/ct/PolicyImpl;->doesResultConformToPolicyAt(Lcom/android/org/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v2

    return-object v2
.end method

.method public blacklist doesResultConformToPolicyAt(Lcom/android/org/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;
    .registers 12
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;
    .param p3, "atTime"    # J

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/VerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v0, "validSCTs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ct/PolicyImpl;->filterOutUnknown(Ljava/util/List;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ct/PolicyImpl;->filterOutAfterRetired(Ljava/util/List;)V

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v1, "embeddedValidSCTs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v2, "ocspOrTLSValidSCTs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/VerifiedSCT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 75
    .local v4, "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT;->getSct()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getOrigin()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    move-result-object v5

    sget-object v6, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    if-ne v5, v6, :cond_39

    .line 76
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 78
    :cond_39
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v4    # "vsct":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    :goto_3c
    goto :goto_1d

    .line 81
    :cond_3d
    sget-object v3, Lcom/android/org/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    .line 82
    .local v3, "compliance":Lcom/android/org/conscrypt/ct/PolicyCompliance;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 83
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/org/conscrypt/ct/PolicyImpl;->conformEmbeddedSCTs(Ljava/util/Set;Ljava/security/cert/X509Certificate;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v3

    .line 84
    sget-object v4, Lcom/android/org/conscrypt/ct/PolicyCompliance;->COMPLY:Lcom/android/org/conscrypt/ct/PolicyCompliance;

    if-ne v3, v4, :cond_4e

    .line 85
    return-object v3

    .line 88
    :cond_4e
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_58

    .line 89
    invoke-direct {p0, v2, p3, p4}, Lcom/android/org/conscrypt/ct/PolicyImpl;->conformOCSPorTLSSCTs(Ljava/util/Set;J)Lcom/android/org/conscrypt/ct/PolicyCompliance;

    move-result-object v3

    .line 91
    :cond_58
    return-object v3
.end method

.method public blacklist isLogStoreCompliant(Lcom/android/org/conscrypt/ct/LogStore;)Z
    .registers 5
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/LogStore;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "now":J
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/conscrypt/ct/PolicyImpl;->isLogStoreCompliantAt(Lcom/android/org/conscrypt/ct/LogStore;J)Z

    move-result v2

    return v2
.end method

.method public blacklist isLogStoreCompliantAt(Lcom/android/org/conscrypt/ct/LogStore;J)Z
    .registers 10
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/LogStore;
    .param p2, "atTime"    # J

    .line 43
    invoke-interface {p1}, Lcom/android/org/conscrypt/ct/LogStore;->getTimestamp()J

    move-result-wide v0

    .line 44
    .local v0, "storeTimestamp":J
    const-wide v2, 0x1687d2800L

    .line 45
    .local v2, "seventyDaysInMs":J
    add-long v4, v0, v2

    cmp-long v4, v4, p2

    const/4 v5, 0x0

    if-gez v4, :cond_11

    .line 47
    return v5

    .line 48
    :cond_11
    cmp-long v4, v0, p2

    if-lez v4, :cond_16

    .line 51
    return v5

    .line 53
    :cond_16
    const/4 v4, 0x1

    return v4
.end method
