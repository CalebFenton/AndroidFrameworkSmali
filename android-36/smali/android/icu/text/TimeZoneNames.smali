.class public abstract Landroid/icu/text/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneNames$Cache;,
        Landroid/icu/text/TimeZoneNames$NameType;,
        Landroid/icu/text/TimeZoneNames$Factory;,
        Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;,
        Landroid/icu/text/TimeZoneNames$MatchInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "android.icu.impl.TimeZoneNamesFactoryImpl"

.field private static final greylist-max-o FACTORY_NAME_PROP:Ljava/lang/String; = "android.icu.text.TimeZoneNames.Factory.impl"

.field private static greylist-max-o TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache; = null

.field private static final greylist-max-o TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

.field private static final whitelist serialVersionUID:J = -0x7f66b7d81bd309c1L


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTZNAMES_FACTORY()Landroid/icu/text/TimeZoneNames$Factory;
    .registers 1

    sget-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 116
    new-instance v0, Landroid/icu/text/TimeZoneNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneNames$Cache;-><init>(Landroid/icu/text/TimeZoneNames-IA;)V

    sput-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "factory":Landroid/icu/text/TimeZoneNames$Factory;
    const-string v1, "android.icu.text.TimeZoneNames.Factory.impl"

    const-string v2, "android.icu.impl.TimeZoneNamesFactoryImpl"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "classname":Ljava/lang/String;
    :goto_11
    :try_start_11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TimeZoneNames$Factory;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1b} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_1b} :catch_1d

    move-object v0, v3

    .line 128
    goto :goto_2a

    .line 133
    :catch_1d
    move-exception v3

    goto :goto_23

    .line 131
    :catch_1f
    move-exception v3

    goto :goto_22

    .line 129
    :catch_21
    move-exception v3

    .line 135
    :goto_22
    nop

    .line 136
    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 137
    nop

    .line 142
    :goto_2a
    if-nez v0, :cond_32

    .line 143
    new-instance v2, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;

    invoke-direct {v2}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;-><init>()V

    move-object v0, v2

    .line 145
    :cond_32
    sput-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    .line 146
    .end local v0    # "factory":Landroid/icu/text/TimeZoneNames$Factory;
    .end local v1    # "classname":Ljava/lang/String;
    return-void

    .line 139
    .restart local v0    # "factory":Landroid/icu/text/TimeZoneNames$Factory;
    .restart local v1    # "classname":Ljava/lang/String;
    :cond_35
    const-string v1, "android.icu.impl.TimeZoneNamesFactoryImpl"

    goto :goto_11
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    return-void
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 156
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/text/TimeZoneNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/TimeZoneNames;

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 169
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getTZDBInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 182
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    invoke-direct {v0, p0}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 317
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The method is not implemented in TimeZoneNames base class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api getAvailableMetaZoneIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final whitelist test-api getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;
    .registers 7
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 263
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "mzID":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .end local v1    # "mzID":Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method public greylist-max-o getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .registers 12
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "types"    # [Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J
    .param p5, "dest"    # [Ljava/lang/String;
    .param p6, "destOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 428
    :cond_9
    const/4 v0, 0x0

    .line 429
    .local v0, "mzID":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_27

    .line 430
    aget-object v2, p2, v1

    .line 431
    .local v2, "type":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {p0, p1, v2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_20

    .line 433
    if-nez v0, :cond_1c

    .line 434
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_1c
    invoke-virtual {p0, v0, v2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_20
    add-int v4, p6, v1

    aput-object v3, p5, v4

    .line 429
    .end local v2    # "type":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 440
    .end local v1    # "i":I
    :cond_27
    return-void

    .line 426
    .end local v0    # "mzID":Ljava/lang/String;
    :cond_28
    :goto_28
    return-void
.end method

.method public whitelist test-api getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "tzID"    # Ljava/lang/String;

    .line 301
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public greylist-max-o loadAllDisplayNames()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    return-void
.end method
