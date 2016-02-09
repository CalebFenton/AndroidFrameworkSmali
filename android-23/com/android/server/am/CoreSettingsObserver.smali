.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 34
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@f
    .line 39
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@16
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    #@1d
    .line 44
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@1f
    const-string/jumbo v1, "long_press_timeout"

    #@22
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 47
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@29
    const-string/jumbo v1, "time_12_24"

    #@2c
    const-class v2, Ljava/lang/String;

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 50
    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    #@33
    const-string/jumbo v1, "debug_view_attributes"

    #@36
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 54
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@c
    .line 60
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 61
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    #@11
    .line 62
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    #@14
    .line 58
    return-void
.end method

.method private beginObserveCoreSettings()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 84
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "setting$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 85
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v2

    #@1b
    .line 86
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1d
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@26
    goto :goto_0

    #@27
    .line 90
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@29
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Ljava/lang/String;

    #@3d
    .line 91
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@40
    move-result-object v2

    #@41
    .line 92
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@43
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@45
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@4c
    goto :goto_1

    #@4d
    .line 96
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    #@4f
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@52
    move-result-object v3

    #@53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v1

    #@57
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_2

    #@5d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Ljava/lang/String;

    #@63
    .line 97
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@66
    move-result-object v2

    #@67
    .line 98
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@69
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@6b
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@72
    goto :goto_2

    #@73
    .line 83
    .end local v0    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 16
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v2, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@6
    .line 105
    .local v2, "context":Landroid/content/Context;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v12

    #@a
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v4

    #@e
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v12

    #@12
    if-eqz v12, :cond_c

    #@14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/util/Map$Entry;

    #@1a
    .line 106
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Ljava/lang/String;

    #@20
    .line 107
    .local v5, "setting":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Ljava/lang/Class;

    #@26
    .line 108
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/lang/String;

    #@28
    if-ne v6, v12, :cond_3

    #@2a
    .line 110
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@2c
    move-object/from16 v0, p2

    #@2e
    if-ne v0, v12, :cond_1

    #@30
    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@33
    move-result-object v12

    #@34
    invoke-static {v12, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    .line 117
    .local v9, "value":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    #@3a
    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    goto :goto_0

    #@3e
    .line 112
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@40
    move-object/from16 v0, p2

    #@42
    if-ne v0, v12, :cond_2

    #@44
    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@47
    move-result-object v12

    #@48
    invoke-static {v12, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    #@4d
    .line 115
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v12

    #@51
    invoke-static {v12, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    #@56
    .line 118
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@58
    if-ne v6, v12, :cond_6

    #@5a
    .line 120
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@5c
    move-object/from16 v0, p2

    #@5e
    if-ne v0, v12, :cond_4

    #@60
    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@63
    move-result-object v12

    #@64
    const/4 v13, 0x0

    #@65
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@68
    move-result v8

    #@69
    .line 127
    .local v8, "value":I
    :goto_2
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@6e
    goto :goto_0

    #@6f
    .line 122
    .end local v8    # "value":I
    :cond_4
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@71
    move-object/from16 v0, p2

    #@73
    if-ne v0, v12, :cond_5

    #@75
    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@78
    move-result-object v12

    #@79
    const/4 v13, 0x0

    #@7a
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7d
    move-result v8

    #@7e
    .restart local v8    # "value":I
    goto :goto_2

    #@7f
    .line 125
    .end local v8    # "value":I
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@82
    move-result-object v12

    #@83
    const/4 v13, 0x0

    #@84
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@87
    move-result v8

    #@88
    .restart local v8    # "value":I
    goto :goto_2

    #@89
    .line 128
    .end local v8    # "value":I
    :cond_6
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@8b
    if-ne v6, v12, :cond_9

    #@8d
    .line 130
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@8f
    move-object/from16 v0, p2

    #@91
    if-ne v0, v12, :cond_7

    #@93
    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@96
    move-result-object v12

    #@97
    const/4 v13, 0x0

    #@98
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@9b
    move-result v7

    #@9c
    .line 137
    .local v7, "value":F
    :goto_3
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 132
    .end local v7    # "value":F
    :cond_7
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@a5
    move-object/from16 v0, p2

    #@a7
    if-ne v0, v12, :cond_8

    #@a9
    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ac
    move-result-object v12

    #@ad
    const/4 v13, 0x0

    #@ae
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@b1
    move-result v7

    #@b2
    .restart local v7    # "value":F
    goto :goto_3

    #@b3
    .line 135
    .end local v7    # "value":F
    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b6
    move-result-object v12

    #@b7
    const/4 v13, 0x0

    #@b8
    invoke-static {v12, v5, v13}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@bb
    move-result v7

    #@bc
    .restart local v7    # "value":F
    goto :goto_3

    #@bd
    .line 138
    .end local v7    # "value":F
    :cond_9
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@bf
    if-ne v6, v12, :cond_0

    #@c1
    .line 140
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@c3
    move-object/from16 v0, p2

    #@c5
    if-ne v0, v12, :cond_a

    #@c7
    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ca
    move-result-object v12

    #@cb
    const-wide/16 v14, 0x0

    #@cd
    invoke-static {v12, v5, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@d0
    move-result-wide v10

    #@d1
    .line 147
    .local v10, "value":J
    :goto_4
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v0, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 142
    .end local v10    # "value":J
    :cond_a
    sget-object v12, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@da
    move-object/from16 v0, p2

    #@dc
    if-ne v0, v12, :cond_b

    #@de
    .line 143
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e1
    move-result-object v12

    #@e2
    const-wide/16 v14, 0x0

    #@e4
    invoke-static {v12, v5, v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@e7
    move-result-wide v10

    #@e8
    .restart local v10    # "value":J
    goto :goto_4

    #@e9
    .line 145
    .end local v10    # "value":J
    :cond_b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ec
    move-result-object v12

    #@ed
    const-wide/16 v14, 0x0

    #@ef
    invoke-static {v12, v5, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@f2
    move-result-wide v10

    #@f3
    .restart local v10    # "value":J
    goto :goto_4

    #@f4
    .line 103
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v5    # "setting":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "value":J
    :cond_c
    return-void
.end method

.method private sendCoreSettings()V
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@2
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    #@7
    .line 78
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@9
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    #@e
    .line 79
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@10
    sget-object v1, Lcom/android/server/am/CoreSettingsObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    #@12
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/CoreSettingsObserver;->populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    #@15
    .line 80
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@17
    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    #@1c
    .line 76
    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Bundle;

    #@8
    return-object v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v0

    #@3
    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 70
    return-void

    #@8
    .line 71
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
