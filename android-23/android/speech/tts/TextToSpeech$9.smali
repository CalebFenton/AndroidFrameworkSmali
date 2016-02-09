.class Landroid/speech/tts/TextToSpeech$9;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1456
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 13
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x2

    #@1
    .line 1459
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@3
    if-nez v9, :cond_0

    #@5
    .line 1460
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v9

    #@9
    return-object v9

    #@a
    .line 1462
    :cond_0
    const/4 v2, 0x0

    #@b
    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .line 1464
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@e
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 1471
    .local v2, "language":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@14
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    move-result-object v0

    #@18
    .line 1477
    .local v0, "country":Ljava/lang/String;
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@1a
    invoke-virtual {v9}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 1484
    .local v4, "variant":Ljava/lang/String;
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@21
    move-result v3

    #@22
    .line 1485
    .local v3, "result":I
    if-ltz v3, :cond_4

    #@24
    .line 1487
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    .line 1488
    .local v8, "voiceName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v9

    #@2c
    if-eqz v9, :cond_1

    #@2e
    .line 1489
    const-string/jumbo v9, "TextToSpeech"

    #@31
    new-instance v10, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v11, "Couldn\'t find the default voice for "

    #@39
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v10

    #@41
    const-string/jumbo v11, "-"

    #@44
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v10

    #@4c
    .line 1490
    const-string/jumbo v11, "-"

    #@4f
    .line 1489
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1491
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v9

    #@62
    return-object v9

    #@63
    .line 1465
    .end local v3    # "result":I
    .end local v4    # "variant":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    .local v2, "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@64
    .line 1466
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string/jumbo v9, "TextToSpeech"

    #@67
    new-instance v10, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v11, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    #@6f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v10

    #@73
    iget-object v11, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@75
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v10

    #@79
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v10

    #@7d
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    .line 1467
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v9

    #@84
    return-object v9

    #@85
    .line 1472
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .local v2, "language":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@86
    .line 1473
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v9, "TextToSpeech"

    #@89
    new-instance v10, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v11, "Couldn\'t retrieve ISO 3166 country code for locale: "

    #@91
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v10

    #@95
    iget-object v11, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    #@97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v10

    #@9f
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a2
    .line 1474
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v9

    #@a6
    return-object v9

    #@a7
    .line 1495
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .local v0, "country":Ljava/lang/String;
    .restart local v3    # "result":I
    .restart local v4    # "variant":Ljava/lang/String;
    .restart local v8    # "voiceName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@a9
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@ac
    move-result-object v9

    #@ad
    invoke-interface {p1, v9, v8}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    #@b0
    move-result v9

    #@b1
    const/4 v10, -0x1

    #@b2
    if-ne v9, v10, :cond_2

    #@b4
    .line 1496
    const-string/jumbo v9, "TextToSpeech"

    #@b7
    new-instance v10, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v11, "The service claimed "

    #@bf
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v10

    #@c3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    const-string/jumbo v11, "-"

    #@ca
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v10

    #@ce
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v10

    #@d2
    const-string/jumbo v11, "-"

    #@d5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v10

    #@d9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v10

    #@dd
    .line 1497
    const-string/jumbo v11, " was available with voice name "

    #@e0
    .line 1496
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v10

    #@e8
    .line 1498
    const-string/jumbo v11, " but loadVoice returned ERROR"

    #@eb
    .line 1496
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v10

    #@ef
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v10

    #@f3
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 1499
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f9
    move-result-object v9

    #@fa
    return-object v9

    #@fb
    .line 1504
    :cond_2
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@fd
    invoke-static {v9, p1, v8}, Landroid/speech/tts/TextToSpeech;->-wrap2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    #@100
    move-result-object v5

    #@101
    .line 1505
    .local v5, "voice":Landroid/speech/tts/Voice;
    if-nez v5, :cond_3

    #@103
    .line 1506
    const-string/jumbo v9, "TextToSpeech"

    #@106
    new-instance v10, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v11, "getDefaultVoiceNameFor returned "

    #@10e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v10

    #@112
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v10

    #@116
    const-string/jumbo v11, " for locale "

    #@119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v10

    #@11d
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v10

    #@121
    .line 1507
    const-string/jumbo v11, "-"

    #@124
    .line 1506
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v10

    #@128
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v10

    #@12c
    .line 1507
    const-string/jumbo v11, "-"

    #@12f
    .line 1506
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v10

    #@133
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v10

    #@137
    .line 1508
    const-string/jumbo v11, " but getVoice returns null"

    #@13a
    .line 1506
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v10

    #@13e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v10

    #@142
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    .line 1509
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v9

    #@149
    return-object v9

    #@14a
    .line 1511
    :cond_3
    const-string/jumbo v7, ""

    #@14d
    .line 1513
    .local v7, "voiceLanguage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@150
    move-result-object v9

    #@151
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    #@154
    move-result-object v7

    #@155
    .line 1519
    :goto_0
    const-string/jumbo v6, ""

    #@158
    .line 1521
    .local v6, "voiceCountry":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@15b
    move-result-object v9

    #@15c
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    #@15f
    move-result-object v6

    #@160
    .line 1526
    :goto_1
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@162
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@165
    move-result-object v9

    #@166
    const-string/jumbo v10, "voiceName"

    #@169
    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16c
    .line 1527
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@16e
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@171
    move-result-object v9

    #@172
    const-string/jumbo v10, "language"

    #@175
    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@178
    .line 1528
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@17a
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@17d
    move-result-object v9

    #@17e
    const-string/jumbo v10, "country"

    #@181
    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@184
    .line 1529
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    #@186
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@189
    move-result-object v9

    #@18a
    const-string/jumbo v10, "variant"

    #@18d
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@190
    move-result-object v11

    #@191
    invoke-virtual {v11}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@194
    move-result-object v11

    #@195
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@198
    .line 1531
    .end local v5    # "voice":Landroid/speech/tts/Voice;
    .end local v6    # "voiceCountry":Ljava/lang/String;
    .end local v7    # "voiceLanguage":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19b
    move-result-object v9

    #@19c
    return-object v9

    #@19d
    .line 1514
    .restart local v5    # "voice":Landroid/speech/tts/Voice;
    .restart local v7    # "voiceLanguage":Ljava/lang/String;
    .restart local v8    # "voiceName":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@19e
    .line 1515
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v9, "TextToSpeech"

    #@1a1
    new-instance v10, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v11, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    #@1a9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v10

    #@1ad
    .line 1516
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@1b0
    move-result-object v11

    #@1b1
    .line 1515
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v10

    #@1b5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b8
    move-result-object v10

    #@1b9
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1bc
    goto :goto_0

    #@1bd
    .line 1522
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v6    # "voiceCountry":Ljava/lang/String;
    :catch_3
    move-exception v1

    #@1be
    .line 1523
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v9, "TextToSpeech"

    #@1c1
    new-instance v10, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    const-string/jumbo v11, "Couldn\'t retrieve ISO 3166 country code for locale: "

    #@1c9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v10

    #@1cd
    .line 1524
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    #@1d0
    move-result-object v11

    #@1d1
    .line 1523
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v10

    #@1d5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v10

    #@1d9
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1dc
    goto :goto_1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$9;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
