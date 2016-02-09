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
    .line 226
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    sput-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@b
    .line 229
    sget-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    #@d
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    #@f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 386
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    sput-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1b
    .line 403
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1f
    const-string/jumbo v2, "gr"

    #@22
    const/16 v3, 0xca

    #@24
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 404
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2e
    const-string/jumbo v2, "nl"

    #@31
    const/16 v3, 0xcc

    #@33
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 405
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3d
    const-string/jumbo v2, "be"

    #@40
    const/16 v3, 0xce

    #@42
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 406
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4c
    const-string/jumbo v2, "fr"

    #@4f
    const/16 v3, 0xd0

    #@51
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 407
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@59
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5b
    const-string/jumbo v2, "mc"

    #@5e
    const/16 v3, 0xd4

    #@60
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    .line 408
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@68
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6a
    const-string/jumbo v2, "ad"

    #@6d
    const/16 v3, 0xd5

    #@6f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    .line 409
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@77
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@79
    const-string/jumbo v2, "es"

    #@7c
    const/16 v3, 0xd6

    #@7e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 410
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@86
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@88
    const-string/jumbo v2, "hu"

    #@8b
    const/16 v3, 0xd8

    #@8d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@93
    .line 411
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@95
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@97
    const-string/jumbo v2, "ba"

    #@9a
    const/16 v3, 0xda

    #@9c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a2
    .line 412
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a6
    const-string/jumbo v2, "hr"

    #@a9
    const/16 v3, 0xdb

    #@ab
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b1
    .line 413
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b5
    const-string/jumbo v2, "rs"

    #@b8
    const/16 v3, 0xdc

    #@ba
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0
    .line 414
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c4
    const-string/jumbo v2, "it"

    #@c7
    const/16 v3, 0xde

    #@c9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cf
    .line 415
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d3
    const-string/jumbo v2, "va"

    #@d6
    const/16 v3, 0xe1

    #@d8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@db
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@de
    .line 416
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@e2
    const-string/jumbo v2, "ro"

    #@e5
    const/16 v3, 0xe2

    #@e7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ea
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ed
    .line 417
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ef
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@f1
    const-string/jumbo v2, "ch"

    #@f4
    const/16 v3, 0xe4

    #@f6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@f9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fc
    .line 418
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@fe
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@100
    const-string/jumbo v2, "cz"

    #@103
    const/16 v3, 0xe6

    #@105
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10b
    .line 419
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@10d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@10f
    const-string/jumbo v2, "sk"

    #@112
    const/16 v3, 0xe7

    #@114
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11a
    .line 420
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@11c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@11e
    const-string/jumbo v2, "at"

    #@121
    const/16 v3, 0xe8

    #@123
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@129
    .line 421
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@12b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@12d
    const-string/jumbo v2, "gb"

    #@130
    const/16 v3, 0xea

    #@132
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@138
    .line 422
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@13a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@13c
    const-string/jumbo v2, "gb"

    #@13f
    const/16 v3, 0xeb

    #@141
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@147
    .line 423
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@149
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@14b
    const-string/jumbo v2, "dk"

    #@14e
    const/16 v3, 0xee

    #@150
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@156
    .line 424
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@158
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@15a
    const-string/jumbo v2, "se"

    #@15d
    invoke-direct {v1, v6, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@163
    .line 425
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@165
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@167
    const-string/jumbo v2, "no"

    #@16a
    const/16 v3, 0xf2

    #@16c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@16f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@172
    .line 426
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@174
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@176
    const-string/jumbo v2, "fi"

    #@179
    const/16 v3, 0xf4

    #@17b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@17e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@181
    .line 427
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@183
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@185
    const-string/jumbo v2, "lt"

    #@188
    const/16 v3, 0xf6

    #@18a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@18d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@190
    .line 428
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@192
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@194
    const-string/jumbo v2, "lv"

    #@197
    const/16 v3, 0xf7

    #@199
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@19c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19f
    .line 429
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1a1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1a3
    const-string/jumbo v2, "ee"

    #@1a6
    const/16 v3, 0xf8

    #@1a8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1ab
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ae
    .line 430
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1b0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1b2
    const-string/jumbo v2, "ru"

    #@1b5
    const/16 v3, 0xfa

    #@1b7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1ba
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bd
    .line 431
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1bf
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1c1
    const-string/jumbo v2, "ua"

    #@1c4
    const/16 v3, 0xff

    #@1c6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1c9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1cc
    .line 432
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1ce
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1d0
    const-string/jumbo v2, "by"

    #@1d3
    const/16 v3, 0x101

    #@1d5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1d8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1db
    .line 433
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1dd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1df
    const-string/jumbo v2, "md"

    #@1e2
    const/16 v3, 0x103

    #@1e4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1e7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ea
    .line 434
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1ec
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1ee
    const-string/jumbo v2, "pl"

    #@1f1
    const/16 v3, 0x104

    #@1f3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@1f6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f9
    .line 435
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@1fb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@1fd
    const-string/jumbo v2, "de"

    #@200
    const/16 v3, 0x106

    #@202
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@208
    .line 436
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@20a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@20c
    const-string/jumbo v2, "gi"

    #@20f
    const/16 v3, 0x10a

    #@211
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@217
    .line 437
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@219
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@21b
    const-string/jumbo v2, "pt"

    #@21e
    const/16 v3, 0x10c

    #@220
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@226
    .line 438
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@228
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@22a
    const-string/jumbo v2, "lu"

    #@22d
    const/16 v3, 0x10e

    #@22f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@235
    .line 439
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@237
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@239
    const-string/jumbo v2, "ie"

    #@23c
    const/16 v3, 0x110

    #@23e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@244
    .line 440
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@246
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@248
    const-string/jumbo v2, "is"

    #@24b
    const/16 v3, 0x112

    #@24d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@253
    .line 441
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@255
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@257
    const-string/jumbo v2, "al"

    #@25a
    const/16 v3, 0x114

    #@25c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@25f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@262
    .line 442
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@264
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@266
    const-string/jumbo v2, "mt"

    #@269
    const/16 v3, 0x116

    #@26b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@26e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@271
    .line 443
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@273
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@275
    const-string/jumbo v2, "cy"

    #@278
    const/16 v3, 0x118

    #@27a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@27d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@280
    .line 444
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@282
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@284
    const-string/jumbo v2, "ge"

    #@287
    const/16 v3, 0x11a

    #@289
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@28c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28f
    .line 445
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@291
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@293
    const-string/jumbo v2, "am"

    #@296
    const/16 v3, 0x11b

    #@298
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@29b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29e
    .line 446
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2a0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2a2
    const-string/jumbo v2, "bg"

    #@2a5
    const/16 v3, 0x11c

    #@2a7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2aa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2ad
    .line 447
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2af
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2b1
    const-string/jumbo v2, "tr"

    #@2b4
    const/16 v3, 0x11e

    #@2b6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2b9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2bc
    .line 448
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2be
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2c0
    const-string/jumbo v2, "fo"

    #@2c3
    const/16 v3, 0x120

    #@2c5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2c8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2cb
    .line 449
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2cd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2cf
    const-string/jumbo v2, "ge"

    #@2d2
    const/16 v3, 0x121

    #@2d4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2d7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2da
    .line 450
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2dc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2de
    const-string/jumbo v2, "gl"

    #@2e1
    const/16 v3, 0x122

    #@2e3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2e6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e9
    .line 451
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2eb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2ed
    const-string/jumbo v2, "sm"

    #@2f0
    const/16 v3, 0x124

    #@2f2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@2f5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f8
    .line 452
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@2fa
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2fc
    const-string/jumbo v2, "si"

    #@2ff
    const/16 v3, 0x125

    #@301
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@307
    .line 453
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@309
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@30b
    const-string/jumbo v2, "mk"

    #@30e
    const/16 v3, 0x126

    #@310
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@313
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@316
    .line 454
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@318
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@31a
    const-string/jumbo v2, "li"

    #@31d
    const/16 v3, 0x127

    #@31f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@325
    .line 455
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@327
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@329
    const-string/jumbo v2, "me"

    #@32c
    const/16 v3, 0x129

    #@32e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@334
    .line 456
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@336
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@338
    const-string/jumbo v2, "ca"

    #@33b
    const/16 v3, 0x12e

    #@33d
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@340
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@343
    .line 457
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@345
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@347
    const-string/jumbo v2, "pm"

    #@34a
    const/16 v3, 0x134

    #@34c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@34f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@352
    .line 458
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@354
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@356
    const-string/jumbo v2, "us"

    #@359
    const/16 v3, 0x136

    #@35b
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@35e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@361
    .line 459
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@363
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@365
    const-string/jumbo v2, "us"

    #@368
    const/16 v3, 0x137

    #@36a
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@36d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@370
    .line 460
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@372
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@374
    const-string/jumbo v2, "us"

    #@377
    const/16 v3, 0x138

    #@379
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@37c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37f
    .line 461
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@381
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@383
    const-string/jumbo v2, "us"

    #@386
    const/16 v3, 0x139

    #@388
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@38b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38e
    .line 462
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@390
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@392
    const-string/jumbo v2, "us"

    #@395
    const/16 v3, 0x13a

    #@397
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@39a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39d
    .line 463
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@39f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3a1
    const-string/jumbo v2, "us"

    #@3a4
    const/16 v3, 0x13b

    #@3a6
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3ac
    .line 464
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3ae
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3b0
    const-string/jumbo v2, "us"

    #@3b3
    const/16 v3, 0x13c

    #@3b5
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3b8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3bb
    .line 465
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3bd
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3bf
    const-string/jumbo v2, "pr"

    #@3c2
    const/16 v3, 0x14a

    #@3c4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3c7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3ca
    .line 466
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3cc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3ce
    const-string/jumbo v2, "vi"

    #@3d1
    const/16 v3, 0x14c

    #@3d3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3d6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d9
    .line 467
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3db
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3dd
    const-string/jumbo v2, "mx"

    #@3e0
    const/16 v3, 0x14e

    #@3e2
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3e5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e8
    .line 468
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3ea
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3ec
    const-string/jumbo v2, "jm"

    #@3ef
    const/16 v3, 0x152

    #@3f1
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@3f4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f7
    .line 469
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@3f9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3fb
    const-string/jumbo v2, "gp"

    #@3fe
    const/16 v3, 0x154

    #@400
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@403
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@406
    .line 470
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@408
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@40a
    const-string/jumbo v2, "bb"

    #@40d
    const/16 v3, 0x156

    #@40f
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@412
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@415
    .line 471
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@417
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@419
    const-string/jumbo v2, "ag"

    #@41c
    const/16 v3, 0x158

    #@41e
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@421
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@424
    .line 472
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@426
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@428
    const-string/jumbo v2, "ky"

    #@42b
    const/16 v3, 0x15a

    #@42d
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@433
    .line 473
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@435
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@437
    const-string/jumbo v2, "vg"

    #@43a
    const/16 v3, 0x15c

    #@43c
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@43f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@442
    .line 474
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@444
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@446
    const-string/jumbo v2, "bm"

    #@449
    const/16 v3, 0x15e

    #@44b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@44e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@451
    .line 475
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@453
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@455
    const-string/jumbo v2, "gd"

    #@458
    const/16 v3, 0x160

    #@45a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@45d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@460
    .line 476
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@462
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@464
    const-string/jumbo v2, "ms"

    #@467
    const/16 v3, 0x162

    #@469
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@46c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46f
    .line 477
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@471
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@473
    const-string/jumbo v2, "kn"

    #@476
    const/16 v3, 0x164

    #@478
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@47b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47e
    .line 478
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@480
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@482
    const-string/jumbo v2, "lc"

    #@485
    const/16 v3, 0x166

    #@487
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@48a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48d
    .line 479
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@48f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@491
    const-string/jumbo v2, "vc"

    #@494
    const/16 v3, 0x168

    #@496
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49c
    .line 480
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@49e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4a0
    const-string/jumbo v2, "ai"

    #@4a3
    const/16 v3, 0x16a

    #@4a5
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4ab
    .line 481
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4ad
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4af
    const-string/jumbo v2, "aw"

    #@4b2
    const/16 v3, 0x16b

    #@4b4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4b7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4ba
    .line 482
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4bc
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4be
    const-string/jumbo v2, "bs"

    #@4c1
    const/16 v3, 0x16c

    #@4c3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4c6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c9
    .line 483
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4cb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4cd
    const-string/jumbo v2, "ai"

    #@4d0
    const/16 v3, 0x16d

    #@4d2
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4d5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4d8
    .line 484
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4da
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4dc
    const-string/jumbo v2, "dm"

    #@4df
    const/16 v3, 0x16e

    #@4e1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4e4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e7
    .line 485
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4e9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4eb
    const-string/jumbo v2, "cu"

    #@4ee
    const/16 v3, 0x170

    #@4f0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@4f3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f6
    .line 486
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@4f8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4fa
    const-string/jumbo v2, "do"

    #@4fd
    const/16 v3, 0x172

    #@4ff
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@505
    .line 487
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@507
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@509
    const-string/jumbo v2, "ht"

    #@50c
    const/16 v3, 0x174

    #@50e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@514
    .line 488
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@516
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@518
    const-string/jumbo v2, "tt"

    #@51b
    const/16 v3, 0x176

    #@51d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@520
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@523
    .line 489
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@525
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@527
    const-string/jumbo v2, "tc"

    #@52a
    const/16 v3, 0x178

    #@52c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@52f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@532
    .line 490
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@534
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@536
    const-string/jumbo v2, "az"

    #@539
    const/16 v3, 0x190

    #@53b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@53e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@541
    .line 491
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@543
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@545
    const-string/jumbo v2, "kz"

    #@548
    const/16 v3, 0x191

    #@54a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@54d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@550
    .line 492
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@552
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@554
    const-string/jumbo v2, "bt"

    #@557
    const/16 v3, 0x192

    #@559
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@55c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55f
    .line 493
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@561
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@563
    const-string/jumbo v2, "in"

    #@566
    const/16 v3, 0x194

    #@568
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@56b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56e
    .line 494
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@570
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@572
    const-string/jumbo v2, "in"

    #@575
    const/16 v3, 0x195

    #@577
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@57a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57d
    .line 495
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@57f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@581
    const-string/jumbo v2, "in"

    #@584
    const/16 v3, 0x196

    #@586
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@589
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58c
    .line 496
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@58e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@590
    const-string/jumbo v2, "pk"

    #@593
    const/16 v3, 0x19a

    #@595
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@598
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59b
    .line 497
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@59d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@59f
    const-string/jumbo v2, "af"

    #@5a2
    const/16 v3, 0x19c

    #@5a4
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5a7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5aa
    .line 498
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5ac
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5ae
    const-string/jumbo v2, "lk"

    #@5b1
    const/16 v3, 0x19d

    #@5b3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5b6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b9
    .line 499
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5bb
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5bd
    const-string/jumbo v2, "mm"

    #@5c0
    const/16 v3, 0x19e

    #@5c2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5c5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c8
    .line 500
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5ca
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5cc
    const-string/jumbo v2, "lb"

    #@5cf
    const/16 v3, 0x19f

    #@5d1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5d4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d7
    .line 501
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5d9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5db
    const-string/jumbo v2, "jo"

    #@5de
    const/16 v3, 0x1a0

    #@5e0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5e3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e6
    .line 502
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5e8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5ea
    const-string/jumbo v2, "sy"

    #@5ed
    const/16 v3, 0x1a1

    #@5ef
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@5f2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f5
    .line 503
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@5f7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@5f9
    const-string/jumbo v2, "iq"

    #@5fc
    const/16 v3, 0x1a2

    #@5fe
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@601
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@604
    .line 504
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@606
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@608
    const-string/jumbo v2, "kw"

    #@60b
    const/16 v3, 0x1a3

    #@60d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@610
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@613
    .line 505
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@615
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@617
    const-string/jumbo v2, "sa"

    #@61a
    const/16 v3, 0x1a4

    #@61c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@61f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@622
    .line 506
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@624
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@626
    const-string/jumbo v2, "ye"

    #@629
    const/16 v3, 0x1a5

    #@62b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@62e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@631
    .line 507
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@633
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@635
    const-string/jumbo v2, "om"

    #@638
    const/16 v3, 0x1a6

    #@63a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@63d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@640
    .line 508
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@642
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@644
    const-string/jumbo v2, "ps"

    #@647
    const/16 v3, 0x1a7

    #@649
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@64c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64f
    .line 509
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@651
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@653
    const-string/jumbo v2, "ae"

    #@656
    const/16 v3, 0x1a8

    #@658
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@65b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65e
    .line 510
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@660
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@662
    const-string/jumbo v2, "il"

    #@665
    const/16 v3, 0x1a9

    #@667
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@66a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66d
    .line 511
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@66f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@671
    const-string/jumbo v2, "bh"

    #@674
    const/16 v3, 0x1aa

    #@676
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@679
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67c
    .line 512
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@67e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@680
    const-string/jumbo v2, "qa"

    #@683
    const/16 v3, 0x1ab

    #@685
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@688
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@68b
    .line 513
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@68d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@68f
    const-string/jumbo v2, "mn"

    #@692
    const/16 v3, 0x1ac

    #@694
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@697
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@69a
    .line 514
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@69c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@69e
    const-string/jumbo v2, "np"

    #@6a1
    const/16 v3, 0x1ad

    #@6a3
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6a6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6a9
    .line 515
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6ab
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6ad
    const-string/jumbo v2, "ae"

    #@6b0
    const/16 v3, 0x1ae

    #@6b2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6b5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b8
    .line 516
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6ba
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6bc
    const-string/jumbo v2, "ae"

    #@6bf
    const/16 v3, 0x1af

    #@6c1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6c4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c7
    .line 517
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6c9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6cb
    const-string/jumbo v2, "ir"

    #@6ce
    const/16 v3, 0x1b0

    #@6d0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6d3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6d6
    .line 518
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6d8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6da
    const-string/jumbo v2, "uz"

    #@6dd
    const/16 v3, 0x1b2

    #@6df
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6e2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e5
    .line 519
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6e7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6e9
    const-string/jumbo v2, "tj"

    #@6ec
    const/16 v3, 0x1b4

    #@6ee
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@6f1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f4
    .line 520
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@6f6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@6f8
    const-string/jumbo v2, "kg"

    #@6fb
    const/16 v3, 0x1b5

    #@6fd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@700
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@703
    .line 521
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@705
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@707
    const-string/jumbo v2, "tm"

    #@70a
    const/16 v3, 0x1b6

    #@70c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@70f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@712
    .line 522
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@714
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@716
    const-string/jumbo v2, "jp"

    #@719
    const/16 v3, 0x1b8

    #@71b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@71e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@721
    .line 523
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@723
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@725
    const-string/jumbo v2, "jp"

    #@728
    const/16 v3, 0x1b9

    #@72a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@72d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@730
    .line 524
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@732
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@734
    const-string/jumbo v2, "kr"

    #@737
    const/16 v3, 0x1c2

    #@739
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@73c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@73f
    .line 525
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@741
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@743
    const-string/jumbo v2, "vn"

    #@746
    const/16 v3, 0x1c4

    #@748
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@74b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@74e
    .line 526
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@750
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@752
    const-string/jumbo v2, "hk"

    #@755
    const/16 v3, 0x1c6

    #@757
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@75a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75d
    .line 527
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@75f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@761
    const-string/jumbo v2, "mo"

    #@764
    const/16 v3, 0x1c7

    #@766
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@769
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76c
    .line 528
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@76e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@770
    const-string/jumbo v2, "kh"

    #@773
    const/16 v3, 0x1c8

    #@775
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@778
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77b
    .line 529
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@77d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@77f
    const-string/jumbo v2, "la"

    #@782
    const/16 v3, 0x1c9

    #@784
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@787
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@78a
    .line 530
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@78c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@78e
    const-string/jumbo v2, "cn"

    #@791
    const/16 v3, 0x1cc

    #@793
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@796
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@799
    .line 531
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@79b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@79d
    const-string/jumbo v2, "cn"

    #@7a0
    const/16 v3, 0x1cd

    #@7a2
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7a5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a8
    .line 532
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7aa
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7ac
    const-string/jumbo v2, "tw"

    #@7af
    const/16 v3, 0x1d2

    #@7b1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7b4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7b7
    .line 533
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7b9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7bb
    const-string/jumbo v2, "kp"

    #@7be
    const/16 v3, 0x1d3

    #@7c0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7c3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c6
    .line 534
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7c8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7ca
    const-string/jumbo v2, "bd"

    #@7cd
    const/16 v3, 0x1d6

    #@7cf
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7d2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7d5
    .line 535
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7d7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7d9
    const-string/jumbo v2, "mv"

    #@7dc
    const/16 v3, 0x1d8

    #@7de
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7e1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e4
    .line 536
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7e6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7e8
    const-string/jumbo v2, "my"

    #@7eb
    const/16 v3, 0x1f6

    #@7ed
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7f0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7f3
    .line 537
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@7f5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@7f7
    const-string/jumbo v2, "au"

    #@7fa
    const/16 v3, 0x1f9

    #@7fc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@7ff
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@802
    .line 538
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@804
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@806
    const-string/jumbo v2, "id"

    #@809
    const/16 v3, 0x1fe

    #@80b
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@80e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@811
    .line 539
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@813
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@815
    const-string/jumbo v2, "tl"

    #@818
    const/16 v3, 0x202

    #@81a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@81d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@820
    .line 540
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@822
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@824
    const-string/jumbo v2, "ph"

    #@827
    const/16 v3, 0x203

    #@829
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@82c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82f
    .line 541
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@831
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@833
    const-string/jumbo v2, "th"

    #@836
    const/16 v3, 0x208

    #@838
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@83b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83e
    .line 542
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@840
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@842
    const-string/jumbo v2, "sg"

    #@845
    const/16 v3, 0x20d

    #@847
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@84a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84d
    .line 543
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@84f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@851
    const-string/jumbo v2, "bn"

    #@854
    const/16 v3, 0x210

    #@856
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@859
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85c
    .line 544
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@85e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@860
    const-string/jumbo v2, "nz"

    #@863
    const/16 v3, 0x212

    #@865
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@868
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@86b
    .line 545
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@86d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@86f
    const-string/jumbo v2, "mp"

    #@872
    const/16 v3, 0x216

    #@874
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@877
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@87a
    .line 546
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@87c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@87e
    const-string/jumbo v2, "gu"

    #@881
    const/16 v3, 0x217

    #@883
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@886
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@889
    .line 547
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@88b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@88d
    const-string/jumbo v2, "nr"

    #@890
    const/16 v3, 0x218

    #@892
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@895
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@898
    .line 548
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@89a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@89c
    const-string/jumbo v2, "pg"

    #@89f
    const/16 v3, 0x219

    #@8a1
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8a4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8a7
    .line 549
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8a9
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8ab
    const-string/jumbo v2, "to"

    #@8ae
    const/16 v3, 0x21b

    #@8b0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8b3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8b6
    .line 550
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8b8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8ba
    const-string/jumbo v2, "sb"

    #@8bd
    const/16 v3, 0x21c

    #@8bf
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8c2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c5
    .line 551
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8c7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8c9
    const-string/jumbo v2, "vu"

    #@8cc
    const/16 v3, 0x21d

    #@8ce
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8d1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8d4
    .line 552
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8d6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8d8
    const-string/jumbo v2, "fj"

    #@8db
    const/16 v3, 0x21e

    #@8dd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8e0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e3
    .line 553
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8e5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8e7
    const-string/jumbo v2, "wf"

    #@8ea
    const/16 v3, 0x21f

    #@8ec
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8ef
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8f2
    .line 554
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@8f4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@8f6
    const-string/jumbo v2, "as"

    #@8f9
    const/16 v3, 0x220

    #@8fb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@8fe
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@901
    .line 555
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@903
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@905
    const-string/jumbo v2, "ki"

    #@908
    const/16 v3, 0x221

    #@90a
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@90d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@910
    .line 556
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@912
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@914
    const-string/jumbo v2, "nc"

    #@917
    const/16 v3, 0x222

    #@919
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@91c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91f
    .line 557
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@921
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@923
    const-string/jumbo v2, "pf"

    #@926
    const/16 v3, 0x223

    #@928
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@92b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92e
    .line 558
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@930
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@932
    const-string/jumbo v2, "ck"

    #@935
    const/16 v3, 0x224

    #@937
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@93a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@93d
    .line 559
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@93f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@941
    const-string/jumbo v2, "ws"

    #@944
    const/16 v3, 0x225

    #@946
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@949
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@94c
    .line 560
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@94e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@950
    const-string/jumbo v2, "fm"

    #@953
    const/16 v3, 0x226

    #@955
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@958
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95b
    .line 561
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@95d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@95f
    const-string/jumbo v2, "mh"

    #@962
    const/16 v3, 0x227

    #@964
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@967
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96a
    .line 562
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@96c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@96e
    const-string/jumbo v2, "pw"

    #@971
    const/16 v3, 0x228

    #@973
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@976
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@979
    .line 563
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@97b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@97d
    const-string/jumbo v2, "tv"

    #@980
    const/16 v3, 0x229

    #@982
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@985
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@988
    .line 564
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@98a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@98c
    const-string/jumbo v2, "nu"

    #@98f
    const/16 v3, 0x22b

    #@991
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@994
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@997
    .line 565
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@999
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@99b
    const-string/jumbo v2, "eg"

    #@99e
    const/16 v3, 0x25a

    #@9a0
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9a3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9a6
    .line 566
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9a8
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9aa
    const-string/jumbo v2, "dz"

    #@9ad
    const/16 v3, 0x25b

    #@9af
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9b2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9b5
    .line 567
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9b7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9b9
    const-string/jumbo v2, "ma"

    #@9bc
    const/16 v3, 0x25c

    #@9be
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9c1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c4
    .line 568
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9c6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9c8
    const-string/jumbo v2, "tn"

    #@9cb
    const/16 v3, 0x25d

    #@9cd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9d0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9d3
    .line 569
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9d5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9d7
    const-string/jumbo v2, "ly"

    #@9da
    const/16 v3, 0x25e

    #@9dc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9df
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e2
    .line 570
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9e4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9e6
    const-string/jumbo v2, "gm"

    #@9e9
    const/16 v3, 0x25f

    #@9eb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9ee
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f1
    .line 571
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@9f3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@9f5
    const-string/jumbo v2, "sn"

    #@9f8
    const/16 v3, 0x260

    #@9fa
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@9fd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a00
    .line 572
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a02
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a04
    const-string/jumbo v2, "mr"

    #@a07
    const/16 v3, 0x261

    #@a09
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a0c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a0f
    .line 573
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a11
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a13
    const-string/jumbo v2, "ml"

    #@a16
    const/16 v3, 0x262

    #@a18
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1e
    .line 574
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a20
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a22
    const-string/jumbo v2, "gn"

    #@a25
    const/16 v3, 0x263

    #@a27
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a2a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a2d
    .line 575
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a2f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a31
    const-string/jumbo v2, "ci"

    #@a34
    const/16 v3, 0x264

    #@a36
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a3c
    .line 576
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a3e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a40
    const-string/jumbo v2, "bf"

    #@a43
    const/16 v3, 0x265

    #@a45
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4b
    .line 577
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a4d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a4f
    const-string/jumbo v2, "ne"

    #@a52
    const/16 v3, 0x266

    #@a54
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a5a
    .line 578
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a5c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a5e
    const-string/jumbo v2, "tg"

    #@a61
    const/16 v3, 0x267

    #@a63
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a69
    .line 579
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a6b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a6d
    const-string/jumbo v2, "bj"

    #@a70
    const/16 v3, 0x268

    #@a72
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a78
    .line 580
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a7a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a7c
    const-string/jumbo v2, "mu"

    #@a7f
    const/16 v3, 0x269

    #@a81
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a87
    .line 581
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a89
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a8b
    const-string/jumbo v2, "lr"

    #@a8e
    const/16 v3, 0x26a

    #@a90
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@a93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a96
    .line 582
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@a98
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@a9a
    const-string/jumbo v2, "sl"

    #@a9d
    const/16 v3, 0x26b

    #@a9f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@aa2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@aa5
    .line 583
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@aa7
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@aa9
    const-string/jumbo v2, "gh"

    #@aac
    const/16 v3, 0x26c

    #@aae
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ab1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab4
    .line 584
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ab6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ab8
    const-string/jumbo v2, "ng"

    #@abb
    const/16 v3, 0x26d

    #@abd
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ac0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac3
    .line 585
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ac5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ac7
    const-string/jumbo v2, "td"

    #@aca
    const/16 v3, 0x26e

    #@acc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@acf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ad2
    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ad4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ad6
    const-string/jumbo v2, "cf"

    #@ad9
    const/16 v3, 0x26f

    #@adb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ade
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae1
    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ae3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ae5
    const-string/jumbo v2, "cm"

    #@ae8
    const/16 v3, 0x270

    #@aea
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@aed
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@af0
    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@af2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@af4
    const-string/jumbo v2, "cv"

    #@af7
    const/16 v3, 0x271

    #@af9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@afc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@aff
    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b01
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b03
    const-string/jumbo v2, "st"

    #@b06
    const/16 v3, 0x272

    #@b08
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b0b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b0e
    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b10
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b12
    const-string/jumbo v2, "gq"

    #@b15
    const/16 v3, 0x273

    #@b17
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b1a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b1d
    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b1f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b21
    const-string/jumbo v2, "ga"

    #@b24
    const/16 v3, 0x274

    #@b26
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b2c
    .line 592
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b2e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b30
    const-string/jumbo v2, "cg"

    #@b33
    const/16 v3, 0x275

    #@b35
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b3b
    .line 593
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b3d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b3f
    const-string/jumbo v2, "cg"

    #@b42
    const/16 v3, 0x276

    #@b44
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4a
    .line 594
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b4c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b4e
    const-string/jumbo v2, "ao"

    #@b51
    const/16 v3, 0x277

    #@b53
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b59
    .line 595
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b5b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b5d
    const-string/jumbo v2, "gw"

    #@b60
    const/16 v3, 0x278

    #@b62
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b68
    .line 596
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b6a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b6c
    const-string/jumbo v2, "sc"

    #@b6f
    const/16 v3, 0x279

    #@b71
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b77
    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b79
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b7b
    const-string/jumbo v2, "sd"

    #@b7e
    const/16 v3, 0x27a

    #@b80
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b86
    .line 598
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b88
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b8a
    const-string/jumbo v2, "rw"

    #@b8d
    const/16 v3, 0x27b

    #@b8f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@b92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b95
    .line 599
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@b97
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@b99
    const-string/jumbo v2, "et"

    #@b9c
    const/16 v3, 0x27c

    #@b9e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ba1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ba4
    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ba6
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ba8
    const-string/jumbo v2, "so"

    #@bab
    const/16 v3, 0x27d

    #@bad
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bb0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bb3
    .line 601
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bb5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bb7
    const-string/jumbo v2, "dj"

    #@bba
    const/16 v3, 0x27e

    #@bbc
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bbf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bc2
    .line 602
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bc4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bc6
    const-string/jumbo v2, "ke"

    #@bc9
    const/16 v3, 0x27f

    #@bcb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bce
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bd1
    .line 603
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bd3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bd5
    const-string/jumbo v2, "tz"

    #@bd8
    const/16 v3, 0x280

    #@bda
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bdd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@be0
    .line 604
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@be2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@be4
    const-string/jumbo v2, "ug"

    #@be7
    const/16 v3, 0x281

    #@be9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bec
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bef
    .line 605
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@bf1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@bf3
    const-string/jumbo v2, "bi"

    #@bf6
    const/16 v3, 0x282

    #@bf8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@bfb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bfe
    .line 606
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c00
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c02
    const-string/jumbo v2, "mz"

    #@c05
    const/16 v3, 0x283

    #@c07
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c0a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0d
    .line 607
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c0f
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c11
    const-string/jumbo v2, "zm"

    #@c14
    const/16 v3, 0x285

    #@c16
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c1c
    .line 608
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c1e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c20
    const-string/jumbo v2, "mg"

    #@c23
    const/16 v3, 0x286

    #@c25
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2b
    .line 609
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c2d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c2f
    const-string/jumbo v2, "re"

    #@c32
    const/16 v3, 0x287

    #@c34
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c3a
    .line 610
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c3c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c3e
    const-string/jumbo v2, "zw"

    #@c41
    const/16 v3, 0x288

    #@c43
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c49
    .line 611
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c4b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c4d
    const-string/jumbo v2, "na"

    #@c50
    const/16 v3, 0x289

    #@c52
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c58
    .line 612
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c5a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c5c
    const-string/jumbo v2, "mw"

    #@c5f
    const/16 v3, 0x28a

    #@c61
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c67
    .line 613
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c69
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c6b
    const-string/jumbo v2, "ls"

    #@c6e
    const/16 v3, 0x28b

    #@c70
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c76
    .line 614
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c78
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c7a
    const-string/jumbo v2, "bw"

    #@c7d
    const/16 v3, 0x28c

    #@c7f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c85
    .line 615
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c87
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c89
    const-string/jumbo v2, "sz"

    #@c8c
    const/16 v3, 0x28d

    #@c8e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@c91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c94
    .line 616
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@c96
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@c98
    const-string/jumbo v2, "km"

    #@c9b
    const/16 v3, 0x28e

    #@c9d
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ca0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ca3
    .line 617
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ca5
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ca7
    const-string/jumbo v2, "za"

    #@caa
    const/16 v3, 0x28f

    #@cac
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@caf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cb2
    .line 618
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cb4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cb6
    const-string/jumbo v2, "er"

    #@cb9
    const/16 v3, 0x291

    #@cbb
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cbe
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc1
    .line 619
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cc3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cc5
    const-string/jumbo v2, "sh"

    #@cc8
    const/16 v3, 0x292

    #@cca
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ccd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cd0
    .line 620
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cd2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cd4
    const-string/jumbo v2, "ss"

    #@cd7
    const/16 v3, 0x293

    #@cd9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cdc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cdf
    .line 621
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@ce1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@ce3
    const-string/jumbo v2, "bz"

    #@ce6
    const/16 v3, 0x2be

    #@ce8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ceb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cee
    .line 622
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cf0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@cf2
    const-string/jumbo v2, "gt"

    #@cf5
    const/16 v3, 0x2c0

    #@cf7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@cfa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cfd
    .line 623
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@cff
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d01
    const-string/jumbo v2, "sv"

    #@d04
    const/16 v3, 0x2c2

    #@d06
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d09
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d0c
    .line 624
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d0e
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d10
    const-string/jumbo v2, "hn"

    #@d13
    const/16 v3, 0x2c4

    #@d15
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d1b
    .line 625
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d1d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d1f
    const-string/jumbo v2, "ni"

    #@d22
    const/16 v3, 0x2c6

    #@d24
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d2a
    .line 626
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d2c
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d2e
    const-string/jumbo v2, "cr"

    #@d31
    const/16 v3, 0x2c8

    #@d33
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d39
    .line 627
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d3b
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d3d
    const-string/jumbo v2, "pa"

    #@d40
    const/16 v3, 0x2ca

    #@d42
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d48
    .line 628
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d4a
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d4c
    const-string/jumbo v2, "pe"

    #@d4f
    const/16 v3, 0x2cc

    #@d51
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d57
    .line 629
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d59
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d5b
    const-string/jumbo v2, "ar"

    #@d5e
    const/16 v3, 0x2d2

    #@d60
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d66
    .line 630
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d68
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d6a
    const-string/jumbo v2, "br"

    #@d6d
    const/16 v3, 0x2d4

    #@d6f
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d75
    .line 631
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d77
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d79
    const-string/jumbo v2, "cl"

    #@d7c
    const/16 v3, 0x2da

    #@d7e
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d84
    .line 632
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d86
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d88
    const-string/jumbo v2, "co"

    #@d8b
    const/16 v3, 0x2dc

    #@d8d
    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d93
    .line 633
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@d95
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@d97
    const-string/jumbo v2, "ve"

    #@d9a
    const/16 v3, 0x2de

    #@d9c
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@d9f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@da2
    .line 634
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@da4
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@da6
    const-string/jumbo v2, "bo"

    #@da9
    const/16 v3, 0x2e0

    #@dab
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dae
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@db1
    .line 635
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@db3
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@db5
    const-string/jumbo v2, "gy"

    #@db8
    const/16 v3, 0x2e2

    #@dba
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dbd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dc0
    .line 636
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dc2
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dc4
    const-string/jumbo v2, "ec"

    #@dc7
    const/16 v3, 0x2e4

    #@dc9
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dcc
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dcf
    .line 637
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dd1
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@dd3
    const-string/jumbo v2, "gf"

    #@dd6
    const/16 v3, 0x2e6

    #@dd8
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@ddb
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dde
    .line 638
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@de0
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@de2
    const-string/jumbo v2, "py"

    #@de5
    const/16 v3, 0x2e8

    #@de7
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@dea
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ded
    .line 639
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@def
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@df1
    const-string/jumbo v2, "sr"

    #@df4
    const/16 v3, 0x2ea

    #@df6
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@df9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dfc
    .line 640
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@dfe
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@e00
    const-string/jumbo v2, "uy"

    #@e03
    const/16 v3, 0x2ec

    #@e05
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e08
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e0b
    .line 641
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e0d
    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@e0f
    const-string/jumbo v2, "fk"

    #@e12
    const/16 v3, 0x2ee

    #@e14
    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    #@e17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e1a
    .line 644
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    #@e1c
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@e1f
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
    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 241
    return-object v2

    #@8
    .line 244
    :cond_0
    move-object v0, p0

    #@9
    .line 245
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
    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 247
    return-object v0

    #@1a
    .line 255
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
    .locals 7
    .param p0, "mcc"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 121
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@4
    move-result-object v0

    #@5
    .line 122
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    #@7
    .line 123
    const-string/jumbo v3, "MccTable"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "defaultLanguageForMcc("

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "): no country for mcc"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 124
    return-object v6

    #@29
    .line 128
    :cond_0
    new-instance v3, Ljava/util/Locale;

    #@2b
    const-string/jumbo v4, "und"

    #@2e
    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@30
    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    invoke-static {v3}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    #@36
    move-result-object v2

    #@37
    .line 129
    .local v2, "likelyLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 130
    .local v1, "likelyLanguage":Ljava/lang/String;
    const-string/jumbo v3, "MccTable"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "defaultLanguageForMcc("

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, "): country "

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, " uses "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 132
    return-object v1
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
    .line 269
    if-nez p1, :cond_0

    #@3
    .line 270
    const-string/jumbo v9, "MccTable"

    #@6
    const-string/jumbo v10, "getLocaleForLanguageCountry: skipping no language"

    #@9
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 271
    return-object v12

    #@d
    .line 273
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 274
    const-string/jumbo p2, ""

    #@12
    .line 277
    :cond_1
    new-instance v8, Ljava/util/Locale;

    #@14
    invoke-direct {v8, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 279
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
    .line 280
    .local v6, "localeArray":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    #@21
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v9

    #@25
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@28
    .line 283
    .local v7, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "ar-XB"

    #@2b
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2e
    .line 284
    const-string/jumbo v9, "en-XA"

    #@31
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@34
    .line 286
    new-instance v3, Ljava/util/ArrayList;

    #@36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 287
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
    .line 288
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
    .line 291
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
    .line 292
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@6b
    move-result v9

    #@6c
    .line 291
    if-nez v9, :cond_2

    #@6e
    .line 292
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@75
    move-result v9

    #@76
    .line 291
    if-nez v9, :cond_2

    #@78
    .line 295
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
    .line 297
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
    .line 298
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
    .line 299
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    .line 298
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
    .line 300
    return-object v2

    #@b3
    .line 304
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    goto :goto_0

    #@b7
    .line 317
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "locale$iterator":Ljava/util/Iterator;
    .end local v6    # "localeArray":[Ljava/lang/String;
    .end local v7    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    #@b8
    .line 318
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MccTable"

    #@bb
    const-string/jumbo v10, "getLocaleForLanguageCountry: exception"

    #@be
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c1
    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v12

    #@c2
    .line 308
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
    .line 309
    .local v0, "bestMatch":Ljava/util/Locale;
    if-eqz v0, :cond_5

    #@c8
    .line 310
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
    .line 311
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    .line 310
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
    .line 312
    return-object v0

    #@e7
    .line 314
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
    .line 353
    if-nez p2, :cond_0

    #@3
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 354
    .local v1, "language":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 356
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
    .line 357
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@3e
    move-result-object v2

    #@3f
    .line 361
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    #@41
    if-eqz p2, :cond_1

    #@43
    .line 362
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 363
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
    .line 364
    invoke-static {p0, v6, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@7a
    move-result-object v3

    #@7b
    return-object v3

    #@7c
    .line 353
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    move-object v1, p2

    #@7d
    .restart local v1    # "language":Ljava/lang/String;
    goto :goto_0

    #@7e
    .line 367
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
    .line 330
    const-string/jumbo v3, "persist.sys.timezone"

    #@3
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 331
    .local v1, "timezone":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_1

    #@f
    .line 332
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 333
    .local v2, "zoneId":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_1

    #@1b
    .line 336
    const-string/jumbo v3, "alarm"

    #@1e
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/app/AlarmManager;

    #@24
    .line 337
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@27
    .line 338
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
    .line 329
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
    .line 378
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 379
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
    .line 380
    const-string/jumbo v2, "wifi"

    #@21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/net/wifi/WifiManager;

    #@27
    .line 382
    .local v1, "wM":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x1

    #@28
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    #@2b
    .line 377
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .param p0, "mcc"    # I

    #@0
    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    #@3
    move-result-object v0

    #@4
    .line 143
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    #@6
    .line 144
    const/4 v1, 0x2

    #@7
    return v1

    #@8
    .line 146
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
    .line 159
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
    .line 161
    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@28
    if-eqz v8, :cond_0

    #@2a
    .line 162
    const-string/jumbo v8, "persist.sys.override_mcc"

    #@2d
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 163
    .local v6, "overrideMcc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@34
    move-result v8

    #@35
    if-nez v8, :cond_0

    #@37
    .line 164
    move-object p1, v6

    #@38
    .line 165
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
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 169
    .end local v6    # "overrideMcc":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5c
    move-result v8

    #@5d
    if-nez v8, :cond_7

    #@5f
    .line 172
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    .line 173
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
    .line 181
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
    .line 182
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
    .line 188
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
    .line 189
    if-eqz v4, :cond_1

    #@bb
    .line 190
    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    #@be
    .line 192
    :cond_1
    if-eqz p2, :cond_3

    #@c0
    .line 193
    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    #@c3
    .line 158
    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v5    # "mnc":I
    :cond_2
    :goto_0
    return-void

    #@c4
    .line 183
    .restart local v1    # "defaultMccMnc":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@c5
    .line 184
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
    .line 185
    return-void

    #@e0
    .line 197
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mcc":I
    .restart local v5    # "mnc":I
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/res/Configuration;

    #@e2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@e5
    .line 198
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    #@e6
    .line 199
    .local v7, "updateConfig":Z
    if-eqz v4, :cond_5

    #@e8
    .line 200
    iput v4, v0, Landroid/content/res/Configuration;->mcc:I

    #@ea
    .line 201
    if-nez v5, :cond_4

    #@ec
    const v5, 0xffff

    #@ef
    .end local v5    # "mnc":I
    :cond_4
    iput v5, v0, Landroid/content/res/Configuration;->mnc:I

    #@f1
    .line 202
    const/4 v7, 0x1

    #@f2
    .line 205
    :cond_5
    if-eqz v7, :cond_6

    #@f4
    .line 206
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
    .line 207
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
    .line 211
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v7    # "updateConfig":Z
    :catch_1
    move-exception v2

    #@117
    .line 212
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MccTable"

    #@11a
    const-string/jumbo v9, "Can\'t update configuration"

    #@11d
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@120
    goto :goto_0

    #@121
    .line 209
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
    .line 216
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v7    # "updateConfig":Z
    :cond_7
    if-eqz p2, :cond_2

    #@12d
    .line 218
    invoke-static {p0, v11}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    #@130
    goto :goto_0
.end method
