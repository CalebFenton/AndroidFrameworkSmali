.class final Landroid/provider/CmpApiVerifier;
.super Ljava/lang/Object;
.source "CmpApiVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CmpApiVerifier$CloudMediaProviderApis;
    }
.end annotation


# static fields
.field private static final blacklist CMP_API_TO_THRESHOLD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOCAL_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.providers.media.photopicker"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 594
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 595
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "OnGetCapabilities"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 596
    const-string v3, "onGetMediaCollectionInfo"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 597
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "onQueryMedia"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 598
    const-string v3, "onQueryDeletedMedia"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 599
    const-string v3, "onQueryAlbums"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 600
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "onOpenPreview"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    .line 601
    const-string v4, "onOpenMedia"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 602
    const-string v3, "onQueryMediaCategories"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 603
    const-string v3, "onQueryMediaSets"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 604
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "onQuerySearchSuggestions"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 605
    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "onSearchMedia"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 606
    const-string v3, "onQueryMediaInMediaSet"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 594
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Landroid/provider/CmpApiVerifier;->CMP_API_TO_THRESHOLD_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isCloudMediaProviderLoggingEnabled()Z
    .registers 4

    .line 61
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    const-string v0, "CloudMediaProvider"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    move v1, v2

    :cond_14
    return v1
.end method

.method static blacklist verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V
    .registers 11
    .param p0, "result"    # Landroid/provider/CmpApiResult;
    .param p1, "totalTimeTakenForExecution"    # J
    .param p3, "authority"    # Ljava/lang/String;

    .line 74
    const-string v0, "com.android.providers.media.photopicker"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    .line 75
    invoke-static {}, Landroid/provider/CmpApiVerifier;->isCloudMediaProviderLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 77
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 78
    .local v5, "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/CmpApiVerifier;->CMP_API_TO_THRESHOLD_MAP:Ljava/util/Map;

    .line 80
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getApi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 79
    invoke-static {p1, p2, v0, v1, v6}, Landroid/provider/VerificationLogsHelper;->verifyTotalTimeForExecution(JJLjava/util/List;)V

    .line 82
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getApi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_34} :catch_140

    sparse-switch v1, :sswitch_data_152

    :cond_37
    goto/16 :goto_bd

    :sswitch_39
    :try_start_39
    const-string v1, "onOpenMedia"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x6

    goto/16 :goto_be

    :sswitch_44
    const-string v1, "onQueryMediaInMediaSet"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0xb

    goto/16 :goto_be

    :sswitch_50
    const-string v1, "onOpenPreview"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x5

    goto/16 :goto_be

    :sswitch_5b
    const-string v1, "onQueryDeletedMedia"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x3

    goto :goto_be

    :sswitch_65
    const-string v1, "onSearchMedia"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0xa

    goto :goto_be

    :sswitch_70
    const-string v1, "onQueryMediaCategories"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x7

    goto :goto_be

    :sswitch_7a
    const-string v1, "onQueryMedia"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    goto :goto_be

    :sswitch_84
    const-string v1, "onGetMediaCollectionInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_be

    :sswitch_8e
    const-string v1, "onQueryAlbums"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x4

    goto :goto_be

    :sswitch_98
    const-string v1, "onQueryMediaSets"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x8

    goto :goto_be

    :sswitch_a3
    const-string v1, "OnGetCapabilities"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_be

    :sswitch_ad
    const-string v1, "onQuerySearchSuggestions"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x9

    goto :goto_be

    .line 144
    .end local v5    # "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_b8
    move-exception v0

    move-wide v3, p1

    move-object v1, p3

    goto/16 :goto_143

    .line 82
    .restart local v5    # "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_bd
    const/4 v0, -0x1

    :goto_be
    packed-switch v0, :pswitch_data_184

    move-wide v3, p1

    move-object v1, p3

    .end local p1    # "totalTimeTakenForExecution":J
    .end local p3    # "authority":Ljava/lang/String;
    .local v1, "authority":Ljava/lang/String;
    .local v3, "totalTimeTakenForExecution":J
    goto/16 :goto_136

    .line 135
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "totalTimeTakenForExecution":J
    .restart local p1    # "totalTimeTakenForExecution":J
    .restart local p3    # "authority":Ljava/lang/String;
    :pswitch_c5
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryMediaInMediaSet(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    move-wide v3, p1

    move-object v1, p3

    goto/16 :goto_136

    .line 130
    :pswitch_d0
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnSearchMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 132
    goto :goto_12c

    .line 125
    :pswitch_d8
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQuerySearchSuggestions(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 127
    goto :goto_12c

    .line 120
    :pswitch_e0
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryMediaSets(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 122
    goto :goto_12c

    .line 115
    :pswitch_e8
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryMediaCategories(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 117
    goto :goto_12c

    .line 110
    :pswitch_f0
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnOpenMedia(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V

    .line 112
    goto :goto_12c

    .line 105
    :pswitch_f8
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getDimensions()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnOpenPreview(Landroid/content/res/AssetFileDescriptor;Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V

    .line 107
    goto :goto_12c

    .line 101
    :pswitch_104
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryAlbums(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 102
    goto :goto_12c

    .line 97
    :pswitch_10c
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryDeletedMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 98
    goto :goto_12c

    .line 93
    :pswitch_114
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnQueryMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 94
    goto :goto_12c

    .line 88
    :pswitch_11c
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnGetMediaCollectionInfo(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_123} :catch_b8

    .line 90
    goto :goto_12c

    .line 84
    :pswitch_124
    :try_start_124
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyOnGetCapabilities(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V

    .line 85
    nop

    .line 142
    :goto_12c
    invoke-virtual {p0}, Landroid/provider/CmpApiResult;->getApi()Ljava/lang/String;

    move-result-object v2
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_130} :catch_140

    move-wide v3, p1

    move-object v1, p3

    .end local p1    # "totalTimeTakenForExecution":J
    .end local p3    # "authority":Ljava/lang/String;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "totalTimeTakenForExecution":J
    :try_start_132
    invoke-static/range {v1 .. v6}, Landroid/provider/VerificationLogsHelper;->logVerifications(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 146
    .end local v5    # "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_150

    .line 139
    .restart local v5    # "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The verification for requested API is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "totalTimeTakenForExecution":J
    .end local p0    # "result":Landroid/provider/CmpApiResult;
    throw p1
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13e} :catch_13e

    .line 144
    .end local v5    # "verificationResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "totalTimeTakenForExecution":J
    .restart local p0    # "result":Landroid/provider/CmpApiResult;
    :catch_13e
    move-exception v0

    goto :goto_143

    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "totalTimeTakenForExecution":J
    .restart local p1    # "totalTimeTakenForExecution":J
    .restart local p3    # "authority":Ljava/lang/String;
    :catch_140
    move-exception v0

    move-wide v3, p1

    move-object v1, p3

    .line 145
    .end local p1    # "totalTimeTakenForExecution":J
    .end local p3    # "authority":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "totalTimeTakenForExecution":J
    :goto_143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/VerificationLogsHelper;->logException(Ljava/lang/String;)V

    goto :goto_150

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "totalTimeTakenForExecution":J
    .restart local p1    # "totalTimeTakenForExecution":J
    .restart local p3    # "authority":Ljava/lang/String;
    :cond_14b
    move-wide v3, p1

    move-object v1, p3

    .end local p1    # "totalTimeTakenForExecution":J
    .end local p3    # "authority":Ljava/lang/String;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "totalTimeTakenForExecution":J
    goto :goto_150

    .line 74
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "totalTimeTakenForExecution":J
    .restart local p1    # "totalTimeTakenForExecution":J
    .restart local p3    # "authority":Ljava/lang/String;
    :cond_14e
    move-wide v3, p1

    move-object v1, p3

    .line 148
    .end local p1    # "totalTimeTakenForExecution":J
    .end local p3    # "authority":Ljava/lang/String;
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v3    # "totalTimeTakenForExecution":J
    :goto_150
    return-void

    nop

    :sswitch_data_152
    .sparse-switch
        -0x7a419702 -> :sswitch_ad
        -0x620ccdd3 -> :sswitch_a3
        -0x57bfcdd4 -> :sswitch_98
        -0x4dcad893 -> :sswitch_8e
        -0x49540507 -> :sswitch_84
        -0x43ecfcc5 -> :sswitch_7a
        -0x3cc66849 -> :sswitch_70
        -0x49a1443 -> :sswitch_65
        -0x36f3bec -> :sswitch_5b
        -0x223e941 -> :sswitch_50
        0x2ba2e7be -> :sswitch_44
        0x5950f49b -> :sswitch_39
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_124
        :pswitch_11c
        :pswitch_114
        :pswitch_10c
        :pswitch_104
        :pswitch_f8
        :pswitch_f0
        :pswitch_e8
        :pswitch_e0
        :pswitch_d8
        :pswitch_d0
        :pswitch_c5
    .end packed-switch
.end method

.method static blacklist verifyOnGetCapabilities(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p0, "outputBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->enableCloudMediaProviderCapabilities()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 161
    if-eqz p0, :cond_3e

    .line 162
    const-string v0, "android.provider.extra.PROVIDER_CAPABILITIES"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 165
    const-string v1, "Capabilities is present."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    nop

    .line 168
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/provider/CloudMediaProviderContract$Capabilities;

    .line 171
    .local v0, "capabilities":Landroid/provider/CloudMediaProviderContract$Capabilities;
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 172
    invoke-virtual {v0}, Landroid/provider/CloudMediaProviderContract$Capabilities;->isAlbumsAsCategoryEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 173
    invoke-virtual {v0}, Landroid/provider/CloudMediaProviderContract$Capabilities;->isMediaCategoriesEnabled()Z

    move-result v1

    if-nez v1, :cond_38

    .line 174
    const-string v1, "Declared capabilities are invalid. AlbumsAsCategory capability can only be enabled when MediaCollections is enabled."

    invoke-static {v1}, Landroid/provider/VerificationLogsHelper;->createIsNotValidLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 178
    :cond_38
    const-string v1, "Declared Capabilities are valid."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v0    # "capabilities":Landroid/provider/CloudMediaProviderContract$Capabilities;
    :cond_3d
    :goto_3d
    goto :goto_47

    .line 183
    :cond_3e
    const-string v0, "Capabilities were not returned by OnGetCapabilities"

    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_47
    :goto_47
    return-void
.end method

.method static blacklist verifyOnGetMediaCollectionInfo(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p0, "outputBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_84

    .line 207
    const-string v0, "Received bundle"

    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNotNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v0, "media_collection_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "mediaCollectionId":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyMediaCollectionId(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 219
    const-string v1, "last_media_sync_generation"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 225
    .local v4, "syncGeneration":J
    cmp-long v2, v4, v2

    if-eqz v2, :cond_43

    .line 226
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-ltz v1, :cond_3d

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_media_sync_generation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 232
    :cond_3d
    const-string v1, "last_media_sync_generation is < 0"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 238
    :cond_43
    nop

    .line 239
    invoke-static {v1}, Landroid/provider/VerificationLogsHelper;->createIsNotValidLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_4b
    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "accountName":Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 256
    const-string v1, "account_name is present "

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 261
    :cond_5f
    const-string v1, "account_name is empty"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 267
    :cond_65
    invoke-static {v1}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_6c
    const-string v1, "account_configuration_intent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 277
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_7c

    .line 278
    const-string v1, "account_configuration_intent is present."

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 284
    :cond_7c
    invoke-static {v1}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v0    # "mediaCollectionId":Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "syncGeneration":J
    :goto_83
    goto :goto_8d

    .line 292
    :cond_84
    const-string v0, "Received output bundle"

    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_8d
    return-void
.end method

.method static blacklist verifyOnOpenMedia(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 557
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Received FileDescriptor"

    if-nez p0, :cond_c

    .line 558
    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 560
    :cond_c
    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNotNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_13
    return-void
.end method

.method static blacklist verifyOnOpenPreview(Landroid/content/res/AssetFileDescriptor;Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p0, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .param p1, "expectedSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 528
    .local p2, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Received AssetFileDescriptor"

    if-nez p0, :cond_c

    .line 529
    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 531
    :cond_c
    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNotNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 533
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 534
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 537
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 538
    .local v1, "width":I
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 540
    .local v2, "height":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dimensions of file received: Width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "width":I
    .end local v2    # "height":I
    :goto_5f
    return-void
.end method

.method static blacklist verifyOnQueryAlbums(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_64

    .line 360
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 363
    sget-object v0, Landroid/provider/CloudMediaProviderContract$AlbumColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 365
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 368
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_64

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Albums present and their count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "columnIndexForId":I
    const-string v2, "album_media_count"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 375
    .local v2, "columnIndexForItemCount":I
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 376
    :goto_2b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\t\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 380
    :cond_5a
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v0    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "columnIndexForId":I
    .end local v2    # "columnIndexForItemCount":I
    :cond_64
    return-void
.end method

.method static blacklist verifyOnQueryDeletedMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 341
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 342
    return-void
.end method

.method static blacklist verifyOnQueryMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_f

    .line 312
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 318
    sget-object v0, Landroid/provider/CloudMediaProviderContract$MediaColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 320
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 318
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    goto :goto_18

    .line 324
    :cond_f
    const-string v0, "Received cursor"

    invoke-static {v0}, Landroid/provider/VerificationLogsHelper;->createIsNullLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :goto_18
    return-void
.end method

.method static blacklist verifyOnQueryMediaCategories(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 401
    if-eqz p0, :cond_14

    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 403
    sget-object v0, Landroid/provider/CloudMediaProviderContract$MediaCategoryColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 405
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 403
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 409
    :cond_14
    return-void
.end method

.method static blacklist verifyOnQueryMediaInMediaSet(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 503
    if-eqz p0, :cond_14

    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 505
    sget-object v0, Landroid/provider/CloudMediaProviderContract$MediaColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 507
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 505
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 512
    :cond_14
    return-void
.end method

.method static blacklist verifyOnQueryMediaSets(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 426
    if-eqz p0, :cond_14

    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 428
    sget-object v0, Landroid/provider/CloudMediaProviderContract$MediaSetColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 430
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 428
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 434
    :cond_14
    return-void
.end method

.method static blacklist verifyOnQuerySearchSuggestions(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 451
    if-eqz p0, :cond_14

    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 453
    sget-object v0, Landroid/provider/CloudMediaProviderContract$SearchSuggestionColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 455
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 453
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 460
    :cond_14
    return-void
.end method

.method static blacklist verifyOnSearchMedia(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p1, "verificationResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/VerificationLogsHelper;->verifyCursorNotNullAndMediaCollectionIdPresent(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 477
    if-eqz p0, :cond_14

    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 479
    sget-object v0, Landroid/provider/CloudMediaProviderContract$MediaColumns;->ALL_PROJECTION:[Ljava/lang/String;

    .line 481
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 479
    invoke-static {p0, v0, p2}, Landroid/provider/VerificationLogsHelper;->verifyProjectionForCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    .line 486
    :cond_14
    return-void
.end method
