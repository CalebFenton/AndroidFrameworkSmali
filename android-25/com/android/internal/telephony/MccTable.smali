.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field static sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xf0

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v4, 0x2

    #@4
    .line 233
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    sput-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@b
    .line 237
    sget-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@d
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 238
    sget-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@16
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    #@18
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    sput-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@24
    .line 411
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@26
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@28
    const-string/jumbo v2, "gr"

    #@2b
    const/16 v3, 0xca

    #@2d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 412
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@35
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@37
    const-string/jumbo v2, "nl"

    #@3a
    const/16 v3, 0xcc

    #@3c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    .line 413
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@44
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@46
    const-string/jumbo v2, "be"

    #@49
    const/16 v3, 0xce

    #@4b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@51
    .line 414
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@53
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@55
    const-string/jumbo v2, "fr"

    #@58
    const/16 v3, 0xd0

    #@5a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@60
    .line 415
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@62
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@64
    const-string/jumbo v2, "mc"

    #@67
    const/16 v3, 0xd4

    #@69
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f
    .line 416
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@71
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@73
    const-string/jumbo v2, "ad"

    #@76
    const/16 v3, 0xd5

    #@78
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 417
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@80
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@82
    const-string/jumbo v2, "es"

    #@85
    const/16 v3, 0xd6

    #@87
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8d
    .line 418
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@91
    const-string/jumbo v2, "hu"

    #@94
    const/16 v3, 0xd8

    #@96
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 419
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a0
    const-string/jumbo v2, "ba"

    #@a3
    const/16 v3, 0xda

    #@a5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    .line 420
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ad
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@af
    const-string/jumbo v2, "hr"

    #@b2
    const/16 v3, 0xdb

    #@b4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ba
    .line 421
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@be
    const-string/jumbo v2, "rs"

    #@c1
    const/16 v3, 0xdc

    #@c3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c9
    .line 422
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cd
    const-string/jumbo v2, "it"

    #@d0
    const/16 v3, 0xde

    #@d2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d8
    .line 423
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@da
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dc
    const-string/jumbo v2, "va"

    #@df
    const/16 v3, 0xe1

    #@e1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e7
    .line 424
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@eb
    const-string/jumbo v2, "ro"

    #@ee
    const/16 v3, 0xe2

    #@f0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@f3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f6
    .line 425
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@f8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@fa
    const-string/jumbo v2, "ch"

    #@fd
    const/16 v3, 0xe4

    #@ff
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@105
    .line 426
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@107
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@109
    const-string/jumbo v2, "cz"

    #@10c
    const/16 v3, 0xe6

    #@10e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    .line 427
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@116
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@118
    const-string/jumbo v2, "sk"

    #@11b
    const/16 v3, 0xe7

    #@11d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    .line 428
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@125
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@127
    const-string/jumbo v2, "at"

    #@12a
    const/16 v3, 0xe8

    #@12c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@12f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@132
    .line 429
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@134
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@136
    const-string/jumbo v2, "gb"

    #@139
    const/16 v3, 0xea

    #@13b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@13e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@141
    .line 430
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@143
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@145
    const-string/jumbo v2, "gb"

    #@148
    const/16 v3, 0xeb

    #@14a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@14d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@150
    .line 431
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@152
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@154
    const-string/jumbo v2, "dk"

    #@157
    const/16 v3, 0xee

    #@159
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@15c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15f
    .line 432
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@161
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@163
    const-string/jumbo v2, "se"

    #@166
    invoke-direct {v1, v6, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16c
    .line 433
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@16e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@170
    const-string/jumbo v2, "no"

    #@173
    const/16 v3, 0xf2

    #@175
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17b
    .line 434
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@17d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@17f
    const-string/jumbo v2, "fi"

    #@182
    const/16 v3, 0xf4

    #@184
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18a
    .line 435
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@18c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@18e
    const-string/jumbo v2, "lt"

    #@191
    const/16 v3, 0xf6

    #@193
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@199
    .line 436
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@19b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@19d
    const-string/jumbo v2, "lv"

    #@1a0
    const/16 v3, 0xf7

    #@1a2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1a5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a8
    .line 437
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1aa
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1ac
    const-string/jumbo v2, "ee"

    #@1af
    const/16 v3, 0xf8

    #@1b1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1b4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b7
    .line 438
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1b9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1bb
    const-string/jumbo v2, "ru"

    #@1be
    const/16 v3, 0xfa

    #@1c0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1c3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c6
    .line 439
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1c8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1ca
    const-string/jumbo v2, "ua"

    #@1cd
    const/16 v3, 0xff

    #@1cf
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1d2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d5
    .line 440
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1d7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1d9
    const-string/jumbo v2, "by"

    #@1dc
    const/16 v3, 0x101

    #@1de
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1e1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e4
    .line 441
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1e6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1e8
    const-string/jumbo v2, "md"

    #@1eb
    const/16 v3, 0x103

    #@1ed
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1f0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f3
    .line 442
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1f5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1f7
    const-string/jumbo v2, "pl"

    #@1fa
    const/16 v3, 0x104

    #@1fc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1ff
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@202
    .line 443
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@204
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@206
    const-string/jumbo v2, "de"

    #@209
    const/16 v3, 0x106

    #@20b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@20e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@211
    .line 444
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@213
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@215
    const-string/jumbo v2, "gi"

    #@218
    const/16 v3, 0x10a

    #@21a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@21d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@220
    .line 445
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@222
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@224
    const-string/jumbo v2, "pt"

    #@227
    const/16 v3, 0x10c

    #@229
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@22c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22f
    .line 446
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@231
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@233
    const-string/jumbo v2, "lu"

    #@236
    const/16 v3, 0x10e

    #@238
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@23b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23e
    .line 447
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@240
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@242
    const-string/jumbo v2, "ie"

    #@245
    const/16 v3, 0x110

    #@247
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@24a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24d
    .line 448
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@24f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@251
    const-string/jumbo v2, "is"

    #@254
    const/16 v3, 0x112

    #@256
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25c
    .line 449
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@25e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@260
    const-string/jumbo v2, "al"

    #@263
    const/16 v3, 0x114

    #@265
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26b
    .line 450
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@26d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@26f
    const-string/jumbo v2, "mt"

    #@272
    const/16 v3, 0x116

    #@274
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27a
    .line 451
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@27c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@27e
    const-string/jumbo v2, "cy"

    #@281
    const/16 v3, 0x118

    #@283
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@289
    .line 452
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@28b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@28d
    const-string/jumbo v2, "ge"

    #@290
    const/16 v3, 0x11a

    #@292
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@298
    .line 453
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@29a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@29c
    const-string/jumbo v2, "am"

    #@29f
    const/16 v3, 0x11b

    #@2a1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2a4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a7
    .line 454
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2a9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2ab
    const-string/jumbo v2, "bg"

    #@2ae
    const/16 v3, 0x11c

    #@2b0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2b3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b6
    .line 455
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2b8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2ba
    const-string/jumbo v2, "tr"

    #@2bd
    const/16 v3, 0x11e

    #@2bf
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2c2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c5
    .line 456
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2c7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2c9
    const-string/jumbo v2, "fo"

    #@2cc
    const/16 v3, 0x120

    #@2ce
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2d1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d4
    .line 457
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2d6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2d8
    const-string/jumbo v2, "ge"

    #@2db
    const/16 v3, 0x121

    #@2dd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2e0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e3
    .line 458
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2e5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2e7
    const-string/jumbo v2, "gl"

    #@2ea
    const/16 v3, 0x122

    #@2ec
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2ef
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f2
    .line 459
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2f4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2f6
    const-string/jumbo v2, "sm"

    #@2f9
    const/16 v3, 0x124

    #@2fb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2fe
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@301
    .line 460
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@303
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@305
    const-string/jumbo v2, "si"

    #@308
    const/16 v3, 0x125

    #@30a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@30d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@310
    .line 461
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@312
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@314
    const-string/jumbo v2, "mk"

    #@317
    const/16 v3, 0x126

    #@319
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@31c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31f
    .line 462
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@321
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@323
    const-string/jumbo v2, "li"

    #@326
    const/16 v3, 0x127

    #@328
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@32b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32e
    .line 463
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@330
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@332
    const-string/jumbo v2, "me"

    #@335
    const/16 v3, 0x129

    #@337
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@33a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33d
    .line 464
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@33f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@341
    const-string/jumbo v2, "ca"

    #@344
    const/16 v3, 0x12e

    #@346
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34c
    .line 465
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@34e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@350
    const-string/jumbo v2, "pm"

    #@353
    const/16 v3, 0x134

    #@355
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@358
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35b
    .line 466
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@35d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@35f
    const-string/jumbo v2, "us"

    #@362
    const/16 v3, 0x136

    #@364
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@367
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36a
    .line 467
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@36c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@36e
    const-string/jumbo v2, "us"

    #@371
    const/16 v3, 0x137

    #@373
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@376
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@379
    .line 468
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@37b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@37d
    const-string/jumbo v2, "us"

    #@380
    const/16 v3, 0x138

    #@382
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@388
    .line 469
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@38a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@38c
    const-string/jumbo v2, "us"

    #@38f
    const/16 v3, 0x139

    #@391
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@397
    .line 470
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@399
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@39b
    const-string/jumbo v2, "us"

    #@39e
    const/16 v3, 0x13a

    #@3a0
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3a3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a6
    .line 471
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3a8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3aa
    const-string/jumbo v2, "us"

    #@3ad
    const/16 v3, 0x13b

    #@3af
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3b2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b5
    .line 472
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3b7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3b9
    const-string/jumbo v2, "us"

    #@3bc
    const/16 v3, 0x13c

    #@3be
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3c1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c4
    .line 473
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3c6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3c8
    const-string/jumbo v2, "pr"

    #@3cb
    const/16 v3, 0x14a

    #@3cd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3d0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d3
    .line 474
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3d5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3d7
    const-string/jumbo v2, "vi"

    #@3da
    const/16 v3, 0x14c

    #@3dc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3df
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e2
    .line 475
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3e4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3e6
    const-string/jumbo v2, "mx"

    #@3e9
    const/16 v3, 0x14e

    #@3eb
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3ee
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f1
    .line 476
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3f3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3f5
    const-string/jumbo v2, "jm"

    #@3f8
    const/16 v3, 0x152

    #@3fa
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3fd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@400
    .line 477
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@402
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@404
    const-string/jumbo v2, "gp"

    #@407
    const/16 v3, 0x154

    #@409
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@40c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40f
    .line 478
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@411
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@413
    const-string/jumbo v2, "bb"

    #@416
    const/16 v3, 0x156

    #@418
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@41b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41e
    .line 479
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@420
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@422
    const-string/jumbo v2, "ag"

    #@425
    const/16 v3, 0x158

    #@427
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@42a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42d
    .line 480
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@42f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@431
    const-string/jumbo v2, "ky"

    #@434
    const/16 v3, 0x15a

    #@436
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@439
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43c
    .line 481
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@43e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@440
    const-string/jumbo v2, "vg"

    #@443
    const/16 v3, 0x15c

    #@445
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44b
    .line 482
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@44d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@44f
    const-string/jumbo v2, "bm"

    #@452
    const/16 v3, 0x15e

    #@454
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45a
    .line 483
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@45c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@45e
    const-string/jumbo v2, "gd"

    #@461
    const/16 v3, 0x160

    #@463
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@466
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@469
    .line 484
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@46b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@46d
    const-string/jumbo v2, "ms"

    #@470
    const/16 v3, 0x162

    #@472
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@475
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@478
    .line 485
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@47a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@47c
    const-string/jumbo v2, "kn"

    #@47f
    const/16 v3, 0x164

    #@481
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@484
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@487
    .line 486
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@489
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@48b
    const-string/jumbo v2, "lc"

    #@48e
    const/16 v3, 0x166

    #@490
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@493
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@496
    .line 487
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@498
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@49a
    const-string/jumbo v2, "vc"

    #@49d
    const/16 v3, 0x168

    #@49f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4a2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a5
    .line 488
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4a7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4a9
    const-string/jumbo v2, "ai"

    #@4ac
    const/16 v3, 0x16a

    #@4ae
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4b1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b4
    .line 489
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4b6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4b8
    const-string/jumbo v2, "aw"

    #@4bb
    const/16 v3, 0x16b

    #@4bd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4c0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c3
    .line 490
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4c5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4c7
    const-string/jumbo v2, "bs"

    #@4ca
    const/16 v3, 0x16c

    #@4cc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4cf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d2
    .line 491
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4d4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4d6
    const-string/jumbo v2, "ai"

    #@4d9
    const/16 v3, 0x16d

    #@4db
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4de
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e1
    .line 492
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4e3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4e5
    const-string/jumbo v2, "dm"

    #@4e8
    const/16 v3, 0x16e

    #@4ea
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4ed
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f0
    .line 493
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4f2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4f4
    const-string/jumbo v2, "cu"

    #@4f7
    const/16 v3, 0x170

    #@4f9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4fc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4ff
    .line 494
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@501
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@503
    const-string/jumbo v2, "do"

    #@506
    const/16 v3, 0x172

    #@508
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@50b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50e
    .line 495
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@510
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@512
    const-string/jumbo v2, "ht"

    #@515
    const/16 v3, 0x174

    #@517
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@51a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@51d
    .line 496
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@51f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@521
    const-string/jumbo v2, "tt"

    #@524
    const/16 v3, 0x176

    #@526
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@529
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52c
    .line 497
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@52e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@530
    const-string/jumbo v2, "tc"

    #@533
    const/16 v3, 0x178

    #@535
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53b
    .line 498
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@53d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@53f
    const-string/jumbo v2, "az"

    #@542
    const/16 v3, 0x190

    #@544
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@547
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54a
    .line 499
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@54c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@54e
    const-string/jumbo v2, "kz"

    #@551
    const/16 v3, 0x191

    #@553
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@556
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@559
    .line 500
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@55b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@55d
    const-string/jumbo v2, "bt"

    #@560
    const/16 v3, 0x192

    #@562
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@565
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@568
    .line 501
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@56a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@56c
    const-string/jumbo v2, "in"

    #@56f
    const/16 v3, 0x194

    #@571
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@577
    .line 502
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@579
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@57b
    const-string/jumbo v2, "in"

    #@57e
    const/16 v3, 0x195

    #@580
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@583
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@586
    .line 503
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@588
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@58a
    const-string/jumbo v2, "in"

    #@58d
    const/16 v3, 0x196

    #@58f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@592
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@595
    .line 504
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@597
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@599
    const-string/jumbo v2, "pk"

    #@59c
    const/16 v3, 0x19a

    #@59e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5a1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a4
    .line 505
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5a6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5a8
    const-string/jumbo v2, "af"

    #@5ab
    const/16 v3, 0x19c

    #@5ad
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5b0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b3
    .line 506
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5b5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5b7
    const-string/jumbo v2, "lk"

    #@5ba
    const/16 v3, 0x19d

    #@5bc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5bf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c2
    .line 507
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5c4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5c6
    const-string/jumbo v2, "mm"

    #@5c9
    const/16 v3, 0x19e

    #@5cb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5ce
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d1
    .line 508
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5d3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5d5
    const-string/jumbo v2, "lb"

    #@5d8
    const/16 v3, 0x19f

    #@5da
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5dd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e0
    .line 509
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5e2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5e4
    const-string/jumbo v2, "jo"

    #@5e7
    const/16 v3, 0x1a0

    #@5e9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5ec
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5ef
    .line 510
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5f1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5f3
    const-string/jumbo v2, "sy"

    #@5f6
    const/16 v3, 0x1a1

    #@5f8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5fb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5fe
    .line 511
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@600
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@602
    const-string/jumbo v2, "iq"

    #@605
    const/16 v3, 0x1a2

    #@607
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@60a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@60d
    .line 512
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@60f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@611
    const-string/jumbo v2, "kw"

    #@614
    const/16 v3, 0x1a3

    #@616
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@619
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61c
    .line 513
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@61e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@620
    const-string/jumbo v2, "sa"

    #@623
    const/16 v3, 0x1a4

    #@625
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62b
    .line 514
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@62d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@62f
    const-string/jumbo v2, "ye"

    #@632
    const/16 v3, 0x1a5

    #@634
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@637
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63a
    .line 515
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@63c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@63e
    const-string/jumbo v2, "om"

    #@641
    const/16 v3, 0x1a6

    #@643
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@646
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@649
    .line 516
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@64b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@64d
    const-string/jumbo v2, "ps"

    #@650
    const/16 v3, 0x1a7

    #@652
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@655
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@658
    .line 517
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@65a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@65c
    const-string/jumbo v2, "ae"

    #@65f
    const/16 v3, 0x1a8

    #@661
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@664
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@667
    .line 518
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@669
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@66b
    const-string/jumbo v2, "il"

    #@66e
    const/16 v3, 0x1a9

    #@670
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@673
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@676
    .line 519
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@678
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@67a
    const-string/jumbo v2, "bh"

    #@67d
    const/16 v3, 0x1aa

    #@67f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@682
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@685
    .line 520
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@687
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@689
    const-string/jumbo v2, "qa"

    #@68c
    const/16 v3, 0x1ab

    #@68e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@691
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@694
    .line 521
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@696
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@698
    const-string/jumbo v2, "mn"

    #@69b
    const/16 v3, 0x1ac

    #@69d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6a0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6a3
    .line 522
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6a5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6a7
    const-string/jumbo v2, "np"

    #@6aa
    const/16 v3, 0x1ad

    #@6ac
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6af
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b2
    .line 523
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6b4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6b6
    const-string/jumbo v2, "ae"

    #@6b9
    const/16 v3, 0x1ae

    #@6bb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6be
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c1
    .line 524
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6c3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6c5
    const-string/jumbo v2, "ae"

    #@6c8
    const/16 v3, 0x1af

    #@6ca
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6cd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6d0
    .line 525
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6d2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6d4
    const-string/jumbo v2, "ir"

    #@6d7
    const/16 v3, 0x1b0

    #@6d9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6dc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6df
    .line 526
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6e1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6e3
    const-string/jumbo v2, "uz"

    #@6e6
    const/16 v3, 0x1b2

    #@6e8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6eb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6ee
    .line 527
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6f0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6f2
    const-string/jumbo v2, "tj"

    #@6f5
    const/16 v3, 0x1b4

    #@6f7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6fa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6fd
    .line 528
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6ff
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@701
    const-string/jumbo v2, "kg"

    #@704
    const/16 v3, 0x1b5

    #@706
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@709
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70c
    .line 529
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@70e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@710
    const-string/jumbo v2, "tm"

    #@713
    const/16 v3, 0x1b6

    #@715
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@718
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71b
    .line 530
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@71d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@71f
    const-string/jumbo v2, "jp"

    #@722
    const/16 v3, 0x1b8

    #@724
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72a
    .line 531
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@72c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@72e
    const-string/jumbo v2, "jp"

    #@731
    const/16 v3, 0x1b9

    #@733
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@736
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@739
    .line 532
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@73b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@73d
    const-string/jumbo v2, "kr"

    #@740
    const/16 v3, 0x1c2

    #@742
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@745
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@748
    .line 533
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@74a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@74c
    const-string/jumbo v2, "vn"

    #@74f
    const/16 v3, 0x1c4

    #@751
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@754
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@757
    .line 534
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@759
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@75b
    const-string/jumbo v2, "hk"

    #@75e
    const/16 v3, 0x1c6

    #@760
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@763
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@766
    .line 535
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@768
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@76a
    const-string/jumbo v2, "mo"

    #@76d
    const/16 v3, 0x1c7

    #@76f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@772
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@775
    .line 536
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@777
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@779
    const-string/jumbo v2, "kh"

    #@77c
    const/16 v3, 0x1c8

    #@77e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@781
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@784
    .line 537
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@786
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@788
    const-string/jumbo v2, "la"

    #@78b
    const/16 v3, 0x1c9

    #@78d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@790
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@793
    .line 538
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@795
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@797
    const-string/jumbo v2, "cn"

    #@79a
    const/16 v3, 0x1cc

    #@79c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@79f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a2
    .line 539
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7a4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7a6
    const-string/jumbo v2, "cn"

    #@7a9
    const/16 v3, 0x1cd

    #@7ab
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7ae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7b1
    .line 540
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7b3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7b5
    const-string/jumbo v2, "tw"

    #@7b8
    const/16 v3, 0x1d2

    #@7ba
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c0
    .line 541
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7c2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7c4
    const-string/jumbo v2, "kp"

    #@7c7
    const/16 v3, 0x1d3

    #@7c9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7cc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7cf
    .line 542
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7d1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7d3
    const-string/jumbo v2, "bd"

    #@7d6
    const/16 v3, 0x1d6

    #@7d8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7db
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7de
    .line 543
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7e0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7e2
    const-string/jumbo v2, "mv"

    #@7e5
    const/16 v3, 0x1d8

    #@7e7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7ea
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7ed
    .line 544
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7ef
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7f1
    const-string/jumbo v2, "my"

    #@7f4
    const/16 v3, 0x1f6

    #@7f6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7f9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7fc
    .line 545
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7fe
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@800
    const-string/jumbo v2, "au"

    #@803
    const/16 v3, 0x1f9

    #@805
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@808
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80b
    .line 546
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@80d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@80f
    const-string/jumbo v2, "id"

    #@812
    const/16 v3, 0x1fe

    #@814
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@817
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@81a
    .line 547
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@81c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@81e
    const-string/jumbo v2, "tl"

    #@821
    const/16 v3, 0x202

    #@823
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@826
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@829
    .line 548
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@82b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@82d
    const-string/jumbo v2, "ph"

    #@830
    const/16 v3, 0x203

    #@832
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@835
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@838
    .line 549
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@83a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@83c
    const-string/jumbo v2, "th"

    #@83f
    const/16 v3, 0x208

    #@841
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@844
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@847
    .line 550
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@849
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@84b
    const-string/jumbo v2, "sg"

    #@84e
    const/16 v3, 0x20d

    #@850
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@853
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@856
    .line 551
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@858
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@85a
    const-string/jumbo v2, "bn"

    #@85d
    const/16 v3, 0x210

    #@85f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@862
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@865
    .line 552
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@867
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@869
    const-string/jumbo v2, "nz"

    #@86c
    const/16 v3, 0x212

    #@86e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@871
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@874
    .line 553
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@876
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@878
    const-string/jumbo v2, "mp"

    #@87b
    const/16 v3, 0x216

    #@87d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@880
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@883
    .line 554
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@885
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@887
    const-string/jumbo v2, "gu"

    #@88a
    const/16 v3, 0x217

    #@88c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@88f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@892
    .line 555
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@894
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@896
    const-string/jumbo v2, "nr"

    #@899
    const/16 v3, 0x218

    #@89b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@89e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8a1
    .line 556
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8a3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8a5
    const-string/jumbo v2, "pg"

    #@8a8
    const/16 v3, 0x219

    #@8aa
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8ad
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8b0
    .line 557
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8b2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8b4
    const-string/jumbo v2, "to"

    #@8b7
    const/16 v3, 0x21b

    #@8b9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8bc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8bf
    .line 558
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8c1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8c3
    const-string/jumbo v2, "sb"

    #@8c6
    const/16 v3, 0x21c

    #@8c8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8cb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8ce
    .line 559
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8d0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8d2
    const-string/jumbo v2, "vu"

    #@8d5
    const/16 v3, 0x21d

    #@8d7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8da
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8dd
    .line 560
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8df
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8e1
    const-string/jumbo v2, "fj"

    #@8e4
    const/16 v3, 0x21e

    #@8e6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8e9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8ec
    .line 561
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8ee
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8f0
    const-string/jumbo v2, "wf"

    #@8f3
    const/16 v3, 0x21f

    #@8f5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8f8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8fb
    .line 562
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8fd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8ff
    const-string/jumbo v2, "as"

    #@902
    const/16 v3, 0x220

    #@904
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@907
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@90a
    .line 563
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@90c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@90e
    const-string/jumbo v2, "ki"

    #@911
    const/16 v3, 0x221

    #@913
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@916
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@919
    .line 564
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@91b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@91d
    const-string/jumbo v2, "nc"

    #@920
    const/16 v3, 0x222

    #@922
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@925
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@928
    .line 565
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@92a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@92c
    const-string/jumbo v2, "pf"

    #@92f
    const/16 v3, 0x223

    #@931
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@937
    .line 566
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@939
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@93b
    const-string/jumbo v2, "ck"

    #@93e
    const/16 v3, 0x224

    #@940
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@943
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@946
    .line 567
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@948
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@94a
    const-string/jumbo v2, "ws"

    #@94d
    const/16 v3, 0x225

    #@94f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@955
    .line 568
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@957
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@959
    const-string/jumbo v2, "fm"

    #@95c
    const/16 v3, 0x226

    #@95e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@961
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@964
    .line 569
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@966
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@968
    const-string/jumbo v2, "mh"

    #@96b
    const/16 v3, 0x227

    #@96d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@970
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@973
    .line 570
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@975
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@977
    const-string/jumbo v2, "pw"

    #@97a
    const/16 v3, 0x228

    #@97c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@97f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@982
    .line 571
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@984
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@986
    const-string/jumbo v2, "tv"

    #@989
    const/16 v3, 0x229

    #@98b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@98e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@991
    .line 572
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@993
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@995
    const-string/jumbo v2, "nu"

    #@998
    const/16 v3, 0x22b

    #@99a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@99d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9a0
    .line 573
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9a2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9a4
    const-string/jumbo v2, "eg"

    #@9a7
    const/16 v3, 0x25a

    #@9a9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9ac
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9af
    .line 574
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9b1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9b3
    const-string/jumbo v2, "dz"

    #@9b6
    const/16 v3, 0x25b

    #@9b8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9bb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9be
    .line 575
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9c0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9c2
    const-string/jumbo v2, "ma"

    #@9c5
    const/16 v3, 0x25c

    #@9c7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9ca
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9cd
    .line 576
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9cf
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9d1
    const-string/jumbo v2, "tn"

    #@9d4
    const/16 v3, 0x25d

    #@9d6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9d9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9dc
    .line 577
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9de
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9e0
    const-string/jumbo v2, "ly"

    #@9e3
    const/16 v3, 0x25e

    #@9e5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9e8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9eb
    .line 578
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9ed
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9ef
    const-string/jumbo v2, "gm"

    #@9f2
    const/16 v3, 0x25f

    #@9f4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9f7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9fa
    .line 579
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9fc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9fe
    const-string/jumbo v2, "sn"

    #@a01
    const/16 v3, 0x260

    #@a03
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a06
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a09
    .line 580
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a0b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a0d
    const-string/jumbo v2, "mr"

    #@a10
    const/16 v3, 0x261

    #@a12
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a18
    .line 581
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a1a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a1c
    const-string/jumbo v2, "ml"

    #@a1f
    const/16 v3, 0x262

    #@a21
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a27
    .line 582
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a29
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a2b
    const-string/jumbo v2, "gn"

    #@a2e
    const/16 v3, 0x263

    #@a30
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a36
    .line 583
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a38
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a3a
    const-string/jumbo v2, "ci"

    #@a3d
    const/16 v3, 0x264

    #@a3f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a45
    .line 584
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a47
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a49
    const-string/jumbo v2, "bf"

    #@a4c
    const/16 v3, 0x265

    #@a4e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a54
    .line 585
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a56
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a58
    const-string/jumbo v2, "ne"

    #@a5b
    const/16 v3, 0x266

    #@a5d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a63
    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a65
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a67
    const-string/jumbo v2, "tg"

    #@a6a
    const/16 v3, 0x267

    #@a6c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a6f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a72
    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a74
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a76
    const-string/jumbo v2, "bj"

    #@a79
    const/16 v3, 0x268

    #@a7b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a7e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a81
    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a83
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a85
    const-string/jumbo v2, "mu"

    #@a88
    const/16 v3, 0x269

    #@a8a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a8d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a90
    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a92
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a94
    const-string/jumbo v2, "lr"

    #@a97
    const/16 v3, 0x26a

    #@a99
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a9c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a9f
    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@aa1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@aa3
    const-string/jumbo v2, "sl"

    #@aa6
    const/16 v3, 0x26b

    #@aa8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@aab
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@aae
    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ab0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ab2
    const-string/jumbo v2, "gh"

    #@ab5
    const/16 v3, 0x26c

    #@ab7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@aba
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@abd
    .line 592
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@abf
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ac1
    const-string/jumbo v2, "ng"

    #@ac4
    const/16 v3, 0x26d

    #@ac6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ac9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@acc
    .line 593
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ace
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ad0
    const-string/jumbo v2, "td"

    #@ad3
    const/16 v3, 0x26e

    #@ad5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ad8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@adb
    .line 594
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@add
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@adf
    const-string/jumbo v2, "cf"

    #@ae2
    const/16 v3, 0x26f

    #@ae4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ae7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@aea
    .line 595
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@aec
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@aee
    const-string/jumbo v2, "cm"

    #@af1
    const/16 v3, 0x270

    #@af3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@af6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@af9
    .line 596
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@afb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@afd
    const-string/jumbo v2, "cv"

    #@b00
    const/16 v3, 0x271

    #@b02
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b05
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b08
    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b0a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b0c
    const-string/jumbo v2, "st"

    #@b0f
    const/16 v3, 0x272

    #@b11
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b17
    .line 598
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b19
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b1b
    const-string/jumbo v2, "gq"

    #@b1e
    const/16 v3, 0x273

    #@b20
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b26
    .line 599
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b28
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b2a
    const-string/jumbo v2, "ga"

    #@b2d
    const/16 v3, 0x274

    #@b2f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b35
    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b37
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b39
    const-string/jumbo v2, "cg"

    #@b3c
    const/16 v3, 0x275

    #@b3e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b44
    .line 601
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b46
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b48
    const-string/jumbo v2, "cd"

    #@b4b
    const/16 v3, 0x276

    #@b4d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b53
    .line 602
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b55
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b57
    const-string/jumbo v2, "ao"

    #@b5a
    const/16 v3, 0x277

    #@b5c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b5f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b62
    .line 603
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b64
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b66
    const-string/jumbo v2, "gw"

    #@b69
    const/16 v3, 0x278

    #@b6b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b6e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b71
    .line 604
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b73
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b75
    const-string/jumbo v2, "sc"

    #@b78
    const/16 v3, 0x279

    #@b7a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b7d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b80
    .line 605
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b82
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b84
    const-string/jumbo v2, "sd"

    #@b87
    const/16 v3, 0x27a

    #@b89
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b8c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b8f
    .line 606
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b91
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b93
    const-string/jumbo v2, "rw"

    #@b96
    const/16 v3, 0x27b

    #@b98
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b9b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b9e
    .line 607
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ba0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ba2
    const-string/jumbo v2, "et"

    #@ba5
    const/16 v3, 0x27c

    #@ba7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@baa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bad
    .line 608
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@baf
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bb1
    const-string/jumbo v2, "so"

    #@bb4
    const/16 v3, 0x27d

    #@bb6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bb9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bbc
    .line 609
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bbe
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bc0
    const-string/jumbo v2, "dj"

    #@bc3
    const/16 v3, 0x27e

    #@bc5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bc8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bcb
    .line 610
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bcd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bcf
    const-string/jumbo v2, "ke"

    #@bd2
    const/16 v3, 0x27f

    #@bd4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bd7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bda
    .line 611
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bdc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bde
    const-string/jumbo v2, "tz"

    #@be1
    const/16 v3, 0x280

    #@be3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@be6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@be9
    .line 612
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@beb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bed
    const-string/jumbo v2, "ug"

    #@bf0
    const/16 v3, 0x281

    #@bf2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bf5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bf8
    .line 613
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bfa
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bfc
    const-string/jumbo v2, "bi"

    #@bff
    const/16 v3, 0x282

    #@c01
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c04
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c07
    .line 614
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c09
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c0b
    const-string/jumbo v2, "mz"

    #@c0e
    const/16 v3, 0x283

    #@c10
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c16
    .line 615
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c18
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c1a
    const-string/jumbo v2, "zm"

    #@c1d
    const/16 v3, 0x285

    #@c1f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c25
    .line 616
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c27
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c29
    const-string/jumbo v2, "mg"

    #@c2c
    const/16 v3, 0x286

    #@c2e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c34
    .line 617
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c36
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c38
    const-string/jumbo v2, "re"

    #@c3b
    const/16 v3, 0x287

    #@c3d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c43
    .line 618
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c45
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c47
    const-string/jumbo v2, "zw"

    #@c4a
    const/16 v3, 0x288

    #@c4c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c4f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c52
    .line 619
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c54
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c56
    const-string/jumbo v2, "na"

    #@c59
    const/16 v3, 0x289

    #@c5b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c5e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c61
    .line 620
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c63
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c65
    const-string/jumbo v2, "mw"

    #@c68
    const/16 v3, 0x28a

    #@c6a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c6d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c70
    .line 621
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c72
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c74
    const-string/jumbo v2, "ls"

    #@c77
    const/16 v3, 0x28b

    #@c79
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c7c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c7f
    .line 622
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c81
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c83
    const-string/jumbo v2, "bw"

    #@c86
    const/16 v3, 0x28c

    #@c88
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c8b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c8e
    .line 623
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c90
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c92
    const-string/jumbo v2, "sz"

    #@c95
    const/16 v3, 0x28d

    #@c97
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c9a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c9d
    .line 624
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c9f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ca1
    const-string/jumbo v2, "km"

    #@ca4
    const/16 v3, 0x28e

    #@ca6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ca9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cac
    .line 625
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cae
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cb0
    const-string/jumbo v2, "za"

    #@cb3
    const/16 v3, 0x28f

    #@cb5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cb8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cbb
    .line 626
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cbd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cbf
    const-string/jumbo v2, "er"

    #@cc2
    const/16 v3, 0x291

    #@cc4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cc7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cca
    .line 627
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ccc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cce
    const-string/jumbo v2, "sh"

    #@cd1
    const/16 v3, 0x292

    #@cd3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cd6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cd9
    .line 628
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cdb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cdd
    const-string/jumbo v2, "ss"

    #@ce0
    const/16 v3, 0x293

    #@ce2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ce5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ce8
    .line 629
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cea
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cec
    const-string/jumbo v2, "bz"

    #@cef
    const/16 v3, 0x2be

    #@cf1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cf4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cf7
    .line 630
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cf9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cfb
    const-string/jumbo v2, "gt"

    #@cfe
    const/16 v3, 0x2c0

    #@d00
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d03
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d06
    .line 631
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d08
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d0a
    const-string/jumbo v2, "sv"

    #@d0d
    const/16 v3, 0x2c2

    #@d0f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d15
    .line 632
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d17
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d19
    const-string/jumbo v2, "hn"

    #@d1c
    const/16 v3, 0x2c4

    #@d1e
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d24
    .line 633
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d26
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d28
    const-string/jumbo v2, "ni"

    #@d2b
    const/16 v3, 0x2c6

    #@d2d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d33
    .line 634
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d35
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d37
    const-string/jumbo v2, "cr"

    #@d3a
    const/16 v3, 0x2c8

    #@d3c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d42
    .line 635
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d44
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d46
    const-string/jumbo v2, "pa"

    #@d49
    const/16 v3, 0x2ca

    #@d4b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d4e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d51
    .line 636
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d53
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d55
    const-string/jumbo v2, "pe"

    #@d58
    const/16 v3, 0x2cc

    #@d5a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d5d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d60
    .line 637
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d62
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d64
    const-string/jumbo v2, "ar"

    #@d67
    const/16 v3, 0x2d2

    #@d69
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d6c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d6f
    .line 638
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d71
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d73
    const-string/jumbo v2, "br"

    #@d76
    const/16 v3, 0x2d4

    #@d78
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d7b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d7e
    .line 639
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d80
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d82
    const-string/jumbo v2, "cl"

    #@d85
    const/16 v3, 0x2da

    #@d87
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d8a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d8d
    .line 640
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d8f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d91
    const-string/jumbo v2, "co"

    #@d94
    const/16 v3, 0x2dc

    #@d96
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d9c
    .line 641
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d9e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@da0
    const-string/jumbo v2, "ve"

    #@da3
    const/16 v3, 0x2de

    #@da5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@da8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dab
    .line 642
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dad
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@daf
    const-string/jumbo v2, "bo"

    #@db2
    const/16 v3, 0x2e0

    #@db4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@db7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dba
    .line 643
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dbc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dbe
    const-string/jumbo v2, "gy"

    #@dc1
    const/16 v3, 0x2e2

    #@dc3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dc6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dc9
    .line 644
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dcb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dcd
    const-string/jumbo v2, "ec"

    #@dd0
    const/16 v3, 0x2e4

    #@dd2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dd5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dd8
    .line 645
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dda
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ddc
    const-string/jumbo v2, "gf"

    #@ddf
    const/16 v3, 0x2e6

    #@de1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@de4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@de7
    .line 646
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@de9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@deb
    const-string/jumbo v2, "py"

    #@dee
    const/16 v3, 0x2e8

    #@df0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@df3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@df6
    .line 647
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@df8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dfa
    const-string/jumbo v2, "sr"

    #@dfd
    const/16 v3, 0x2ea

    #@dff
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e02
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e05
    .line 648
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e07
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@e09
    const-string/jumbo v2, "uy"

    #@e0c
    const/16 v3, 0x2ec

    #@e0e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e14
    .line 649
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e16
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@e18
    const-string/jumbo v2, "fk"

    #@e1b
    const/16 v3, 0x2ee

    #@e1d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e23
    .line 652
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e25
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@e28
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static chooseBestFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;
    .locals 3
    .param p0, "target"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v2, 0x0

    #@1
    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 250
    return-object v2

    #@8
    .line 253
    :cond_0
    move-object v0, p0

    #@9
    .line 254
    .local v0, "fallback":Ljava/util/Locale;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@b
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "fallback":Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    #@11
    .restart local v0    # "fallback":Ljava/util/Locale;
    if-eqz v0, :cond_2

    #@13
    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 256
    return-object v0

    #@1a
    .line 264
    :cond_2
    const/4 v1, 0x0

    #@1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Locale;

    #@21
    return-object v1
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "mcc"    # I

    #@0
    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    #@6
    .line 109
    const-string/jumbo v1, ""

    #@9
    return-object v1

    #@a
    .line 111
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@c
    return-object v1
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 8
    .param p0, "mcc"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 121
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4
    move-result-object v1

    #@5
    .line 122
    .local v1, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v1, :cond_0

    #@7
    .line 123
    const-string/jumbo v4, "MccTable"

    #@a
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "defaultLanguageForMcc("

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    const-string/jumbo v6, "): no country for mcc"

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 124
    return-object v7

    #@29
    .line 127
    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@2b
    .line 130
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v4, "in"

    #@2e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 131
    const-string/jumbo v4, "en"

    #@37
    return-object v4

    #@38
    .line 135
    :cond_1
    new-instance v4, Ljava/util/Locale;

    #@3a
    const-string/jumbo v5, "und"

    #@3d
    invoke-direct {v4, v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    invoke-static {v4}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    #@43
    move-result-object v3

    #@44
    .line 136
    .local v3, "likelyLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 137
    .local v2, "likelyLanguage":Ljava/lang/String;
    const-string/jumbo v4, "MccTable"

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "defaultLanguageForMcc("

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    const-string/jumbo v6, "): country "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-string/jumbo v6, " uses "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 139
    return-object v2
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .param p0, "mcc"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 90
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5
    move-result-object v0

    #@6
    .line 91
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    #@8
    .line 92
    return-object v5

    #@9
    .line 94
    :cond_0
    new-instance v1, Ljava/util/Locale;

    #@b
    const-string/jumbo v3, ""

    #@e
    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@10
    invoke-direct {v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 95
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 96
    .local v2, "tz":[Ljava/lang/String;
    array-length v3, v2

    #@18
    if-nez v3, :cond_1

    #@1a
    return-object v5

    #@1b
    .line 97
    :cond_1
    aget-object v3, v2, v6

    #@1d
    return-object v3
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .locals 4
    .param p0, "mcc"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 73
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9
    .line 75
    .local v1, "m":Lcom/android/internal/telephony/MccTable$MccEntry;
    sget-object v2, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b
    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    .line 77
    .local v0, "index":I
    if-gez v0, :cond_0

    #@11
    .line 78
    const/4 v2, 0x0

    #@12
    return-object v2

    #@13
    .line 80
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1b
    return-object v2
.end method

.method private static getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 278
    if-nez p1, :cond_0

    #@3
    .line 279
    const-string/jumbo v9, "MccTable"

    #@6
    const-string/jumbo v10, "getLocaleForLanguageCountry: skipping no language"

    #@9
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 280
    return-object v12

    #@d
    .line 282
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 283
    const-string/jumbo p2, ""

    #@12
    .line 286
    :cond_1
    new-instance v8, Ljava/util/Locale;

    #@14
    invoke-direct {v8, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 288
    .local v8, "target":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 289
    .local v6, "localeArray":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    #@21
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v9

    #@25
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@28
    .line 292
    .local v7, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "ar-XB"

    #@2b
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2e
    .line 293
    const-string/jumbo v9, "en-XA"

    #@31
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@34
    .line 295
    new-instance v3, Ljava/util/ArrayList;

    #@36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 296
    .local v3, "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v5

    #@3d
    .local v5, "locale$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_4

    #@43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/lang/String;

    #@49
    .line 297
    .local v4, "locale":Ljava/lang/String;
    const/16 v9, 0x5f

    #@4b
    const/16 v10, 0x2d

    #@4d
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-static {v9}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@54
    move-result-object v2

    #@55
    .line 300
    .local v2, "l":Ljava/util/Locale;
    if-eqz v2, :cond_2

    #@57
    const-string/jumbo v9, "und"

    #@5a
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v9

    #@62
    if-nez v9, :cond_2

    #@64
    .line 301
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@6b
    move-result v9

    #@6c
    .line 300
    if-nez v9, :cond_2

    #@6e
    .line 301
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@75
    move-result v9

    #@76
    .line 300
    if-nez v9, :cond_2

    #@78
    .line 304
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v9

    #@84
    if-eqz v9, :cond_2

    #@86
    .line 306
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v9

    #@92
    if-eqz v9, :cond_3

    #@94
    .line 307
    const-string/jumbo v9, "MccTable"

    #@97
    new-instance v10, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v11, "getLocaleForLanguageCountry: got perfect match: "

    #@9f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    .line 308
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    .line 307
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v10

    #@ab
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 309
    return-object v2

    #@b3
    .line 313
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    goto :goto_0

    #@b7
    .line 326
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "locale$iterator":Ljava/util/Iterator;
    .end local v6    # "localeArray":[Ljava/lang/String;
    .end local v7    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    #@b8
    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MccTable"

    #@bb
    const-string/jumbo v10, "getLocaleForLanguageCountry: exception"

    #@be
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c1
    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v12

    #@c2
    .line 317
    .restart local v3    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "locale$iterator":Ljava/util/Iterator;
    .restart local v6    # "localeArray":[Ljava/lang/String;
    .restart local v7    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-static {v8, v3}, Lcom/android/internal/telephony/MccTable;->chooseBestFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;

    #@c5
    move-result-object v0

    #@c6
    .line 318
    .local v0, "bestMatch":Ljava/util/Locale;
    if-eqz v0, :cond_5

    #@c8
    .line 319
    const-string/jumbo v9, "MccTable"

    #@cb
    new-instance v10, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v11, "getLocaleForLanguageCountry: got a language-only match: "

    #@d3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v10

    #@d7
    .line 320
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    .line 319
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v10

    #@df
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v10

    #@e3
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 321
    return-object v0

    #@e7
    .line 323
    :cond_5
    const-string/jumbo v9, "MccTable"

    #@ea
    new-instance v10, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v11, "getLocaleForLanguageCountry: no locales for language "

    #@f2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v10

    #@f6
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v10

    #@fe
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@101
    goto :goto_1
.end method

.method public static getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I
    .param p2, "simLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 362
    if-nez p2, :cond_0

    #@3
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 363
    .local v1, "language":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 365
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v3, "MccTable"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "getLocaleFromMcc("

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, ", "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v5, ", "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 366
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@3e
    move-result-object v2

    #@3f
    .line 370
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    #@41
    if-eqz p2, :cond_1

    #@43
    .line 371
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 372
    const-string/jumbo v3, "MccTable"

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "[retry ] getLocaleFromMcc("

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v5, ", "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, ", "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 373
    invoke-static {p0, v6, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@7a
    move-result-object v3

    #@7b
    return-object v3

    #@7c
    .line 362
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    move-object v1, p2

    #@7d
    .restart local v1    # "language":Ljava/lang/String;
    goto :goto_0

    #@7e
    .line 376
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v2
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    #@0
    .prologue
    .line 339
    const-string/jumbo v3, "persist.sys.timezone"

    #@3
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 340
    .local v1, "timezone":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 341
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 342
    .local v2, "zoneId":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_1

    #@1b
    .line 345
    const-string/jumbo v3, "alarm"

    #@1e
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/app/AlarmManager;

    #@24
    .line 346
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@27
    .line 347
    const-string/jumbo v3, "MccTable"

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "timezone set to "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 338
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiCountryCodeFromMcc(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    #@0
    .prologue
    .line 387
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 388
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v2, "MccTable"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "WIFI_COUNTRY_CODE set to "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 389
    const-string/jumbo v2, "wifi"

    #@21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/net/wifi/WifiManager;

    #@27
    .line 390
    .local v1, "wM":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    #@28
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    #@2b
    .line 386
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .param p0, "mcc"    # I

    #@0
    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    #@6
    .line 151
    const/4 v1, 0x2

    #@7
    return v1

    #@8
    .line 153
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    #@a
    return v1
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "fromServiceState"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 166
    const-string/jumbo v8, "MccTable"

    #@4
    new-instance v9, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v10, "updateMccMncConfiguration mccmnc=\'"

    #@c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v9

    #@10
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v9

    #@14
    const-string/jumbo v10, "\' fromServiceState="

    #@17
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v9

    #@23
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 168
    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@28
    if-eqz v8, :cond_0

    #@2a
    .line 169
    const-string/jumbo v8, "persist.sys.override_mcc"

    #@2d
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 170
    .local v6, "overrideMcc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v8

    #@35
    if-nez v8, :cond_0

    #@37
    .line 171
    move-object p1, v6

    #@38
    .line 172
    const-string/jumbo v8, "MccTable"

    #@3b
    new-instance v9, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v10, "updateMccMncConfiguration overriding mccmnc=\'"

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    const-string/jumbo v10, "\'"

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 176
    .end local v6    # "overrideMcc":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5c
    move-result v8

    #@5d
    if-nez v8, :cond_7

    #@5f
    .line 179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 180
    .local v1, "defaultMccMnc":Ljava/lang/String;
    const-string/jumbo v8, "MccTable"

    #@6a
    new-instance v9, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v10, "updateMccMncConfiguration defaultMccMnc="

    #@72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 188
    const/4 v8, 0x0

    #@82
    const/4 v9, 0x3

    #@83
    :try_start_0
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8a
    move-result v4

    #@8b
    .line 189
    .local v4, "mcc":I
    const/4 v8, 0x3

    #@8c
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    move-result v5

    #@94
    .line 195
    .local v5, "mnc":I
    const-string/jumbo v8, "MccTable"

    #@97
    new-instance v9, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v10, "updateMccMncConfiguration: mcc="

    #@9f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    const-string/jumbo v10, ", mnc="

    #@aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v9

    #@b6
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 196
    if-eqz v4, :cond_1

    #@bb
    .line 197
    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    #@be
    .line 199
    :cond_1
    if-eqz p2, :cond_3

    #@c0
    .line 200
    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    #@c3
    .line 165
    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v5    # "mnc":I
    :cond_2
    :goto_0
    return-void

    #@c4
    .line 190
    .restart local v1    # "defaultMccMnc":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@c5
    .line 191
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "MccTable"

    #@c8
    new-instance v9, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v10, "Error parsing IMSI: "

    #@d0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v9

    #@d4
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v9

    #@dc
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    .line 192
    return-void

    #@e0
    .line 204
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mcc":I
    .restart local v5    # "mnc":I
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/res/Configuration;

    #@e2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@e5
    .line 205
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    #@e6
    .line 206
    .local v7, "updateConfig":Z
    if-eqz v4, :cond_5

    #@e8
    .line 207
    iput v4, v0, Landroid/content/res/Configuration;->mcc:I

    #@ea
    .line 208
    if-nez v5, :cond_4

    #@ec
    const v5, 0xffff

    #@ef
    .end local v5    # "mnc":I
    :cond_4
    iput v5, v0, Landroid/content/res/Configuration;->mnc:I

    #@f1
    .line 209
    const/4 v7, 0x1

    #@f2
    .line 212
    :cond_5
    if-eqz v7, :cond_6

    #@f4
    .line 213
    const-string/jumbo v8, "MccTable"

    #@f7
    new-instance v9, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v10, "updateMccMncConfiguration updateConfig config="

    #@ff
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v9

    #@103
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v9

    #@10b
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 214
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@111
    move-result-object v8

    #@112
    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@115
    goto :goto_0

    #@116
    .line 218
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v7    # "updateConfig":Z
    :catch_1
    move-exception v2

    #@117
    .line 219
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MccTable"

    #@11a
    const-string/jumbo v9, "Can\'t update configuration"

    #@11d
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@120
    goto :goto_0

    #@121
    .line 216
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "updateConfig":Z
    :cond_6
    :try_start_2
    const-string/jumbo v8, "MccTable"

    #@124
    const-string/jumbo v9, "updateMccMncConfiguration nothing to update"

    #@127
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@12a
    goto :goto_0

    #@12b
    .line 223
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v7    # "updateConfig":Z
    :cond_7
    if-eqz p2, :cond_2

    #@12d
    .line 225
    invoke-static {p0, v11}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    #@130
    goto :goto_0
.end method
