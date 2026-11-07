.class public Landroid/net/connectivity/android/net/BpfNetMapsUtils;
.super Ljava/lang/Object;
.source "BpfNetMapsUtils.java"


# static fields
.field private static final blacklist sMaskDropIfSet:J

.field private static final blacklist sMaskDropIfUnset:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 103
    const-wide/16 v0, 0x0

    .line 104
    .local v0, "maskDropIfSet":J
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "maskDropIfUnset":J
    sget-object v4, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->ALLOW_CHAINS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    .local v5, "chain":I
    invoke-static {v5}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getMatchByFirewallChain(I)J

    move-result-wide v6

    .line 108
    .local v6, "match":J
    or-long/2addr v2, v6

    .line 109
    .end local v5    # "chain":I
    .end local v6    # "match":J
    goto :goto_a

    .line 110
    :cond_20
    sget-object v4, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->DENY_CHAINS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 111
    .restart local v5    # "chain":I
    invoke-static {v5}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getMatchByFirewallChain(I)J

    move-result-wide v6

    .line 112
    .restart local v6    # "match":J
    or-long/2addr v0, v6

    .line 113
    .end local v5    # "chain":I
    .end local v6    # "match":J
    goto :goto_26

    .line 114
    :cond_3c
    sput-wide v0, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->sMaskDropIfSet:J

    .line 115
    sput-wide v2, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->sMaskDropIfUnset:J

    .line 116
    .end local v0    # "maskDropIfSet":J
    .end local v2    # "maskDropIfUnset":J
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDataSaverEnabled(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U8;",
            ">;)Z"
        }
    .end annotation

    .line 366
    .local p0, "dataSaverEnabledMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U8;>;"
    const-string v0, "getDataSaverEnabled is not available on pre-T devices"

    invoke-static {v0}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->throwIfPreT(Ljava/lang/String;)V

    .line 369
    :try_start_5
    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->DATA_SAVER_ENABLED_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct$U8;

    iget-short v0, v0, Landroid/net/connectivity/com/android/net/module/util/Struct$U8;->val:S
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_f} :catch_15

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 370
    :catch_15
    move-exception v0

    .line 371
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Landroid/os/ServiceSpecificException;

    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get data saver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    .line 372
    invoke-static {v4}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static blacklist getMatchByFirewallChain(I)J
    .registers 5
    .param p0, "chain"    # I

    .line 125
    packed-switch p0, :pswitch_data_42

    .line 151
    new-instance v0, Landroid/os/ServiceSpecificException;

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid firewall chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 149
    :pswitch_1e
    const-wide/16 v0, 0x2000

    return-wide v0

    .line 147
    :pswitch_21
    const-wide/16 v0, 0x2

    return-wide v0

    .line 145
    :pswitch_24
    const-wide/16 v0, 0x1

    return-wide v0

    .line 143
    :pswitch_27
    const-wide/16 v0, 0x800

    return-wide v0

    .line 141
    :pswitch_2a
    const-wide/16 v0, 0x400

    return-wide v0

    .line 139
    :pswitch_2d
    const-wide/16 v0, 0x200

    return-wide v0

    .line 135
    :pswitch_30
    const-wide/16 v0, 0x1000

    return-wide v0

    .line 137
    :pswitch_33
    const-wide/16 v0, 0x40

    return-wide v0

    .line 133
    :pswitch_36
    const-wide/16 v0, 0x20

    return-wide v0

    .line 131
    :pswitch_39
    const-wide/16 v0, 0x10

    return-wide v0

    .line 129
    :pswitch_3c
    const-wide/16 v0, 0x8

    return-wide v0

    .line 127
    :pswitch_3f
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static blacklist getUidNetworkingBlockedReasons(ILandroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)I
    .registers 20
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U32;",
            ">;",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/android/net/UidOwnerValue;",
            ">;",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U8;",
            ">;)I"
        }
    .end annotation

    .line 266
    .local p1, "configurationMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U32;>;"
    .local p2, "uidOwnerMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/android/net/UidOwnerValue;>;"
    .local p3, "dataSaverEnabledMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U8;>;"
    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_a

    .line 267
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_a
    :try_start_a
    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->UID_RULES_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_c} :catch_a6

    move-object/from16 v1, p1

    :try_start_e
    invoke-interface {v1, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;

    iget-wide v2, v0, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;->val:J

    .line 274
    .local v2, "uidRuleConfig":J
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_18} :catch_a2

    move/from16 v4, p0

    :try_start_1a
    invoke-direct {v0, v4}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_1d} :catch_a0

    move-object/from16 v5, p2

    :try_start_1f
    invoke-interface {v5, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/android/net/UidOwnerValue;

    .line 275
    .local v0, "value":Landroid/net/connectivity/android/net/UidOwnerValue;
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_2c

    iget-wide v8, v0, Landroid/net/connectivity/android/net/UidOwnerValue;->rule:J
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_2b} :catch_9e

    goto :goto_2d

    :cond_2c
    move-wide v8, v6

    .line 279
    .end local v0    # "value":Landroid/net/connectivity/android/net/UidOwnerValue;
    .local v8, "uidMatch":J
    :goto_2d
    nop

    .line 280
    not-long v10, v8

    and-long/2addr v10, v2

    sget-wide v12, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->sMaskDropIfUnset:J

    and-long/2addr v10, v12

    and-long v12, v2, v8

    sget-wide v14, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->sMaskDropIfSet:J

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 283
    .local v10, "blockingMatches":J
    const/4 v0, 0x0

    .line 284
    .local v0, "blockedReasons":I
    const-wide/16 v12, 0x10

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_43

    .line 285
    or-int/lit8 v0, v0, 0x1

    .line 287
    :cond_43
    const-wide/16 v12, 0x4

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_4c

    .line 288
    or-int/lit8 v0, v0, 0x2

    .line 290
    :cond_4c
    const-wide/16 v12, 0x8

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_55

    .line 291
    or-int/lit8 v0, v0, 0x4

    .line 293
    :cond_55
    const-wide/16 v12, 0x20

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_5e

    .line 294
    or-int/lit8 v0, v0, 0x8

    .line 296
    :cond_5e
    const-wide/16 v12, 0x40

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_67

    .line 297
    or-int/lit8 v0, v0, 0x20

    .line 299
    :cond_67
    const-wide/16 v12, 0x1000

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_70

    .line 300
    or-int/lit8 v0, v0, 0x40

    .line 302
    :cond_70
    const-wide/16 v12, 0xe00

    and-long/2addr v12, v10

    cmp-long v12, v12, v6

    if-eqz v12, :cond_79

    .line 303
    or-int/lit16 v0, v0, 0x80

    .line 307
    :cond_79
    const-wide/16 v12, 0x2

    and-long/2addr v12, v8

    cmp-long v12, v12, v6

    if-eqz v12, :cond_83

    .line 308
    const/high16 v12, 0x20000

    or-int/2addr v0, v12

    .line 310
    :cond_83
    const-wide/16 v12, 0x2000

    and-long/2addr v12, v8

    cmp-long v12, v12, v6

    if-eqz v12, :cond_8d

    .line 311
    const/high16 v12, 0x40000

    or-int/2addr v0, v12

    .line 313
    :cond_8d
    const-wide/16 v12, 0x1

    and-long/2addr v12, v8

    cmp-long v6, v12, v6

    if-nez v6, :cond_9d

    invoke-static/range {p3 .. p3}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getDataSaverEnabled(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 314
    const/high16 v6, 0x10000

    or-int/2addr v0, v6

    .line 317
    :cond_9d
    return v0

    .line 276
    .end local v0    # "blockedReasons":I
    .end local v2    # "uidRuleConfig":J
    .end local v8    # "uidMatch":J
    .end local v10    # "blockingMatches":J
    :catch_9e
    move-exception v0

    goto :goto_ad

    :catch_a0
    move-exception v0

    goto :goto_ab

    :catch_a2
    move-exception v0

    move/from16 v4, p0

    goto :goto_ab

    :catch_a6
    move-exception v0

    move/from16 v4, p0

    move-object/from16 v1, p1

    :goto_ab
    move-object/from16 v5, p2

    .line 277
    .local v0, "e":Landroid/system/ErrnoException;
    :goto_ad
    new-instance v2, Landroid/os/ServiceSpecificException;

    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get firewall chain status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/system/ErrnoException;->errno:I

    .line 278
    invoke-static {v7}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public static blacklist getUidRule(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;II)I
    .registers 12
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/android/net/UidOwnerValue;",
            ">;II)I"
        }
    .end annotation

    .line 239
    .local p0, "uidOwnerMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/android/net/UidOwnerValue;>;"
    const-string v0, "getUidRule is not available on pre-T devices"

    invoke-static {v0}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->throwIfPreT(Ljava/lang/String;)V

    .line 241
    invoke-static {p1}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getMatchByFirewallChain(I)J

    move-result-wide v0

    .line 242
    .local v0, "match":J
    invoke-static {p1}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->isFirewallAllowList(I)Z

    move-result v2

    .line 244
    .local v2, "isAllowList":Z
    :try_start_d
    new-instance v3, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    invoke-direct {v3, p2}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    invoke-interface {p0, v3}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/UidOwnerValue;

    .line 245
    .local v3, "uidMatch":Landroid/net/connectivity/android/net/UidOwnerValue;
    const/4 v4, 0x1

    if-eqz v3, :cond_26

    iget-wide v5, v3, Landroid/net/connectivity/android/net/UidOwnerValue;->rule:J
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_1d} :catch_2c

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_26

    move v5, v4

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    .line 246
    .local v5, "isMatchEnabled":Z
    :goto_27
    if-ne v5, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x2

    :goto_2b
    return v4

    .line 247
    .end local v3    # "uidMatch":Landroid/net/connectivity/android/net/UidOwnerValue;
    .end local v5    # "isMatchEnabled":Z
    :catch_2c
    move-exception v3

    .line 248
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Landroid/os/ServiceSpecificException;

    iget v5, v3, Landroid/system/ErrnoException;->errno:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get uid rule status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/system/ErrnoException;->errno:I

    .line 249
    invoke-static {v7}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public static blacklist isChainEnabled(Landroid/net/connectivity/com/android/net/module/util/IBpfMap;I)Z
    .registers 9
    .param p1, "chain"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U32;",
            ">;I)Z"
        }
    .end annotation

    .line 214
    .local p0, "configurationMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U32;>;"
    const-string v0, "isChainEnabled is not available on pre-T devices"

    invoke-static {v0}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->throwIfPreT(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getMatchByFirewallChain(I)J

    move-result-wide v0

    .line 218
    .local v0, "match":J
    :try_start_9
    sget-object v2, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->UID_RULES_CONFIGURATION_KEY:Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    invoke-interface {p0, v2}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;

    .line 219
    .local v2, "config":Landroid/net/connectivity/com/android/net/module/util/Struct$U32;
    iget-wide v3, v2, Landroid/net/connectivity/com/android/net/module/util/Struct$U32;->val:J
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_13} :catch_1e

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    return v3

    .line 220
    .end local v2    # "config":Landroid/net/connectivity/com/android/net/module/util/Struct$U32;
    :catch_1e
    move-exception v2

    .line 221
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    iget v4, v2, Landroid/system/ErrnoException;->errno:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get firewall chain status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/system/ErrnoException;->errno:I

    .line 222
    invoke-static {v6}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public static blacklist isFirewallAllowList(I)Z
    .registers 5
    .param p0, "chain"    # I

    .line 162
    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->ALLOW_CHAINS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->METERED_ALLOW_CHAINS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4f

    .line 164
    :cond_19
    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->DENY_CHAINS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->METERED_DENY_CHAINS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4d

    .line 167
    :cond_32
    new-instance v0, Landroid/os/ServiceSpecificException;

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid firewall chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 165
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isUidNetworkingBlocked(IZLandroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)Z
    .registers 9
    .param p0, "uid"    # I
    .param p1, "isNetworkMetered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U32;",
            ">;",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/android/net/UidOwnerValue;",
            ">;",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$U8;",
            ">;)Z"
        }
    .end annotation

    .line 338
    .local p2, "configurationMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U32;>;"
    .local p3, "uidOwnerMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/android/net/UidOwnerValue;>;"
    .local p4, "dataSaverEnabledMap":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$U8;>;"
    const-string v0, "isUidBlockedByFirewallChains is not available on pre-T devices"

    invoke-static {v0}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->throwIfPreT(Ljava/lang/String;)V

    .line 340
    invoke-static {p0, p2, p3, p4}, Landroid/net/connectivity/android/net/BpfNetMapsUtils;->getUidNetworkingBlockedReasons(ILandroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;Landroid/net/connectivity/com/android/net/module/util/IBpfMap;)I

    move-result v0

    .line 345
    .local v0, "blockedReasons":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 346
    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1

    .line 348
    :cond_12
    const v3, 0xffff

    and-int/2addr v3, v0

    if-eqz v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1
.end method

.method public static blacklist matchToString(J)Ljava/lang/String;
    .registers 12
    .param p0, "matchMask"    # J

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    .line 175
    const-string v0, "NO_MATCH"

    return-object v0

    .line 178
    :cond_9
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v2, "sj":Ljava/util/StringJoiner;
    sget-object v3, Landroid/net/connectivity/android/net/BpfNetMapsConstants;->MATCH_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 180
    .local v4, "match":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 181
    .local v5, "matchFlag":J
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 182
    .local v7, "matchName":Ljava/lang/String;
    and-long v8, p0, v5

    cmp-long v8, v8, v0

    if-eqz v8, :cond_39

    .line 183
    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    not-long v8, v5

    and-long/2addr p0, v8

    .line 186
    .end local v4    # "match":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5    # "matchFlag":J
    .end local v7    # "matchName":Ljava/lang/String;
    :cond_39
    goto :goto_16

    .line 187
    :cond_3a
    cmp-long v0, p0, v0

    if-eqz v0, :cond_5a

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_MATCH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 190
    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist throwIfPreT(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    return-void

    .line 198
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
