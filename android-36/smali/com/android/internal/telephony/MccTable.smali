.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;,
        Lcom/android/internal/telephony/MccTable$MccMnc;
    }
.end annotation


# static fields
.field public static final blacklist FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    .line 345
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    .line 369
    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xca

    const-string v4, "gr"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xcc

    const-string v4, "nl"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xce

    const-string v4, "be"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd0

    const-string v4, "fr"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd4

    const-string v4, "mc"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd5

    const-string v4, "ad"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd6

    const-string v4, "es"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xd8

    const-string v4, "hu"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xda

    const-string v4, "ba"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xdb

    const-string v4, "hr"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xdc

    const-string v4, "rs"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xdd

    const-string v4, "xk"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xde

    const-string v4, "it"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe1

    const-string v4, "va"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe2

    const-string v4, "ro"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe4

    const-string v4, "ch"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe6

    const-string v4, "cz"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe7

    const-string v4, "sk"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xe8

    const-string v4, "at"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xea

    const-string v4, "gb"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v3, 0xee

    const-string v4, "dk"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "se"

    invoke-direct {v2, v1, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf2

    const-string v3, "no"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf4

    const-string v3, "fi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf6

    const-string v3, "lt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf7

    const-string v3, "lv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xf8

    const-string v3, "ee"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xfa

    const-string v3, "ru"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0xff

    const-string v3, "ua"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x101

    const-string v3, "by"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x103

    const-string v3, "md"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x104

    const-string v3, "pl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x106

    const-string v3, "de"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10a

    const-string v3, "gi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10c

    const-string v3, "pt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x10e

    const-string v3, "lu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x110

    const-string v3, "ie"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x112

    const-string v3, "is"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x114

    const-string v3, "al"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x116

    const-string v3, "mt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x118

    const-string v3, "cy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11a

    const-string v3, "ge"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11b

    const-string v4, "am"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11c

    const-string v4, "bg"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x11e

    const-string v4, "tr"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x120

    const-string v4, "fo"

    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x121

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x122

    const-string v3, "gl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x124

    const-string v3, "sm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x125

    const-string v3, "si"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x126

    const-string v3, "mk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x127

    const-string v3, "li"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x129

    const-string v3, "me"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x12e

    const-string v3, "ca"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x134

    const-string v3, "pm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x136

    const-string v3, "us"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x137

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x138

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x139

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13a

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13b

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x13c

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14a

    const-string v3, "pr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14c

    const-string v3, "vi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x14e

    const-string v3, "mx"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x152

    const-string v3, "jm"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x154

    const-string v3, "gp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x156

    const-string v3, "bb"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x158

    const-string v3, "ag"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15a

    const-string v3, "ky"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15c

    const-string v3, "vg"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x15e

    const-string v3, "bm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x160

    const-string v3, "gd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x162

    const-string v3, "ms"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x164

    const-string v3, "kn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x166

    const-string v3, "lc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x168

    const-string v3, "vc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16a

    const-string v3, "cw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16b

    const-string v3, "aw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16c

    const-string v3, "bs"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16d

    const-string v3, "ai"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x16e

    const-string v3, "dm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x170

    const-string v3, "cu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x172

    const-string v3, "do"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x174

    const-string v3, "ht"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x176

    const-string v3, "tt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x178

    const-string v3, "tc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x190

    const-string v3, "az"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x191

    const-string v3, "kz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x192

    const-string v3, "bt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x194

    const-string v3, "in"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x195

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x196

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19a

    const-string v3, "pk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19c

    const-string v3, "af"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19d

    const-string v3, "lk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19e

    const-string v3, "mm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x19f

    const-string v3, "lb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a0

    const-string v3, "jo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a1

    const-string v3, "sy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a2

    const-string v3, "iq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a3

    const-string v3, "kw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a4

    const-string v3, "sa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a5

    const-string v3, "ye"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a6

    const-string v3, "om"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a7

    const-string v3, "ps"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a8

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1a9

    const-string v6, "il"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1aa

    const-string v6, "bh"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ab

    const-string v6, "qa"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ac

    const-string v6, "mn"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ad

    const-string v6, "np"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1ae

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1af

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b0

    const-string v3, "ir"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b2

    const-string v3, "uz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b4

    const-string v3, "tj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b5

    const-string v3, "kg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b6

    const-string v3, "tm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b8

    const-string v3, "jp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1b9

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c2

    const-string v3, "kr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c4

    const-string v3, "vn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c6

    const-string v3, "hk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c7

    const-string v3, "mo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c8

    const-string v3, "kh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1c9

    const-string v3, "la"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1cd

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d2

    const-string v3, "tw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d3

    const-string v3, "kp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d6

    const-string v3, "bd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1d8

    const-string v3, "mv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f6

    const-string v3, "my"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1f9

    const-string v3, "au"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x1fe

    const-string v3, "id"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x202

    const-string v3, "tl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x203

    const-string v3, "ph"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x208

    const-string v3, "th"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x20d

    const-string v3, "sg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x210

    const-string v3, "bn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x212

    const-string v3, "nz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x216

    const-string v3, "mp"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x217

    const-string v3, "gu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x218

    const-string v3, "nr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x219

    const-string v3, "pg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21b

    const-string v3, "to"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21c

    const-string v3, "sb"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21d

    const-string v3, "vu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21e

    const-string v3, "fj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x21f

    const-string v3, "wf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x220

    const-string v3, "as"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x221

    const-string v3, "ki"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x222

    const-string v3, "nc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x223

    const-string v3, "pf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x224

    const-string v3, "ck"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x225

    const-string v3, "ws"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x226

    const-string v3, "fm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x227

    const-string v3, "mh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x228

    const-string v3, "pw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x229

    const-string v3, "tv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x22a

    const-string v3, "tk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x22b

    const-string v3, "nu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25a

    const-string v3, "eg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25b

    const-string v3, "dz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25c

    const-string v3, "ma"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25d

    const-string v3, "tn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25e

    const-string v3, "ly"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x25f

    const-string v3, "gm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x260

    const-string v3, "sn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x261

    const-string v3, "mr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x262

    const-string v3, "ml"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x263

    const-string v3, "gn"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x264

    const-string v3, "ci"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x265

    const-string v3, "bf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x266

    const-string v3, "ne"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x267

    const-string v3, "tg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x268

    const-string v3, "bj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x269

    const-string v3, "mu"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26a

    const-string v3, "lr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26b

    const-string v3, "sl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26c

    const-string v3, "gh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26d

    const-string v3, "ng"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26e

    const-string v3, "td"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x26f

    const-string v3, "cf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x270

    const-string v3, "cm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x271

    const-string v3, "cv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x272

    const-string v3, "st"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x273

    const-string v3, "gq"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x274

    const-string v3, "ga"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x275

    const-string v3, "cg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x276

    const-string v3, "cd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x277

    const-string v3, "ao"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x278

    const-string v3, "gw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x279

    const-string v3, "sc"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27a

    const-string v3, "sd"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27b

    const-string v3, "rw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27c

    const-string v3, "et"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27d

    const-string v3, "so"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27e

    const-string v3, "dj"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x27f

    const-string v3, "ke"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x280

    const-string v3, "tz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x281

    const-string v3, "ug"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x282

    const-string v3, "bi"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x283

    const-string v3, "mz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x285

    const-string v3, "zm"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x286

    const-string v3, "mg"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x287

    const-string v3, "re"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x288

    const-string v3, "zw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x289

    const-string v3, "na"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28a

    const-string v3, "mw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28b

    const-string v3, "ls"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28c

    const-string v3, "bw"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28d

    const-string v3, "sz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28e

    const-string v3, "km"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x28f

    const-string v3, "za"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x291

    const-string v3, "er"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x292

    const-string v3, "sh"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x293

    const-string v3, "ss"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2be

    const-string v3, "bz"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c0

    const-string v3, "gt"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c2

    const-string v3, "sv"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c4

    const-string v3, "hn"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c6

    const-string v3, "ni"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2c8

    const-string v3, "cr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ca

    const-string v3, "pa"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2cc

    const-string v3, "pe"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d2

    const-string v3, "ar"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2d4

    const-string v3, "br"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2da

    const-string v3, "cl"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2dc

    const-string v3, "co"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2de

    const-string v3, "ve"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e0

    const-string v3, "bo"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e2

    const-string v3, "gy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e4

    const-string v3, "ec"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e6

    const-string v3, "gf"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2e8

    const-string v3, "py"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ea

    const-string v3, "sr"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ec

    const-string v3, "uy"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const/16 v2, 0x2ee

    const-string v3, "fk"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 187
    const-string p0, ""

    return-object p0

    .line 190
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MccTable;->isNewMccTableEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 192
    :try_start_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object p0

    if-nez p0, :cond_18

    .line 195
    const-string p0, ""

    return-object p0

    .line 197
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1a} :catch_1b

    return-object p0

    .line 200
    :catch_1b
    const-string p0, ""

    return-object p0

    .line 206
    :cond_1e
    const-class v0, Lcom/android/internal/telephony/MccTable;

    monitor-enter v0

    .line 207
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/MccTable;->sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;

    if-nez v1, :cond_32

    .line 209
    invoke-static {}, Landroid/timezone/TelephonyLookup;->getInstance()Landroid/timezone/TelephonyLookup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Landroid/timezone/TelephonyNetworkFinder;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MccTable;->sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_46

    .line 211
    :cond_32
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_30

    if-nez v1, :cond_38

    .line 215
    const-string p0, ""

    return-object p0

    .line 218
    :cond_38
    invoke-virtual {v1, p0}, Landroid/timezone/TelephonyNetworkFinder;->findCountriesByMcc(Ljava/lang/String;)Landroid/timezone/MobileCountries;

    move-result-object p0

    if-nez p0, :cond_41

    .line 220
    const-string p0, ""

    return-object p0

    .line 223
    :cond_41
    invoke-virtual {p0}, Landroid/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_30

    throw p0
.end method

.method private static blacklist countryCodeForMccMncNoFallback(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;
    .registers 4

    .line 254
    const-class v0, Lcom/android/internal/telephony/MccTable;

    monitor-enter v0

    .line 255
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MccTable;->sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;

    if-nez v1, :cond_14

    .line 256
    invoke-static {}, Landroid/timezone/TelephonyLookup;->getInstance()Landroid/timezone/TelephonyLookup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Landroid/timezone/TelephonyNetworkFinder;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MccTable;->sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_2b

    .line 258
    :cond_14
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_12

    .line 259
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTelephonyNetworkFinder:Landroid/timezone/TelephonyNetworkFinder;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    return-object v1

    .line 263
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v2, p0}, Landroid/timezone/TelephonyNetworkFinder;->findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/TelephonyNetwork;

    move-result-object p0

    if-nez p0, :cond_26

    return-object v1

    .line 268
    :cond_26
    invoke-virtual {p0}, Landroid/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 258
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_12

    throw p0
.end method

.method public static greylist-max-q entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .registers 4

    .line 169
    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 171
    sget-object p0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/MccTable$MccEntry;

    return-object p0
.end method

.method public static blacklist geoCountryCodeForMccMnc(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mnc:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 243
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMccMncNoFallback(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 245
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/MccTable$MccMnc;->mcc:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static blacklist getAllMccEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist isNewMccTableEnabled()Z
    .registers 1

    .line 339
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->telephonyLookupMccExtension()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-q smallestDigitsMccForMnc(I)I
    .registers 1

    .line 282
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 287
    :cond_8
    iget p0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    return p0
.end method

.method public static blacklist updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMccMncConfiguration mccmnc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MccTable"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_40

    .line 301
    const-string v0, "persist.sys.override_mcc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMccMncConfiguration overriding mccmnc=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 308
    :cond_40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 311
    :try_start_48
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_50} :catch_a0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_48 .. :try_end_50} :catch_a0

    if-eqz v3, :cond_9a

    .line 317
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 320
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityManager;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "updateMccMncConfiguration: update mccmnc="

    if-nez p0, :cond_82

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failure"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 328
    :cond_9a
    const-string p0, "updateMccMncConfiguration nothing to update"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_a0
    move-exception p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing mccmnc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". ex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    return-void
.end method
