.class public abstract Landroid/icu/text/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneNames$NameType;,
        Landroid/icu/text/TimeZoneNames$MatchInfo;,
        Landroid/icu/text/TimeZoneNames$Factory;,
        Landroid/icu/text/TimeZoneNames$Cache;,
        Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "android.icu.impl.TimeZoneNamesFactoryImpl"

.field private static final FACTORY_NAME_PROP:Ljava/lang/String; = "android.icu.text.TimeZoneNames.Factory.impl"

.field private static TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache; = null

.field private static final TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

.field private static final serialVersionUID:J = -0x7f66b7d81bd309c1L


# direct methods
.method static synthetic -get0()Landroid/icu/text/TimeZoneNames$Factory;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 131
    new-instance v6, Landroid/icu/text/TimeZoneNames$Cache;

    #@3
    invoke-direct {v6, v7}, Landroid/icu/text/TimeZoneNames$Cache;-><init>(Landroid/icu/text/TimeZoneNames$Cache;)V

    #@6
    sput-object v6, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    #@8
    .line 138
    const/4 v3, 0x0

    #@9
    .line 139
    .local v3, "factory":Landroid/icu/text/TimeZoneNames$Factory;
    const-string/jumbo v6, "android.icu.text.TimeZoneNames.Factory.impl"

    #@c
    const-string/jumbo v7, "android.icu.impl.TimeZoneNamesFactoryImpl"

    #@f
    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 142
    .local v1, "classname":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    move-object v0, v6

    #@1c
    check-cast v0, Landroid/icu/text/TimeZoneNames$Factory;

    #@1e
    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    #@1f
    .line 157
    .end local v3    # "factory":Landroid/icu/text/TimeZoneNames$Factory;
    :cond_0
    if-nez v3, :cond_1

    #@21
    .line 158
    new-instance v3, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;

    #@23
    invoke-direct {v3}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;-><init>()V

    #@26
    .line 160
    :cond_1
    sput-object v3, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    #@28
    .line 77
    return-void

    #@29
    .line 144
    .restart local v3    # "factory":Landroid/icu/text/TimeZoneNames$Factory;
    :catch_0
    move-exception v2

    #@2a
    .line 151
    :goto_1
    const-string/jumbo v6, "android.icu.impl.TimeZoneNamesFactoryImpl"

    #@2d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_0

    #@33
    .line 154
    const-string/jumbo v1, "android.icu.impl.TimeZoneNamesFactoryImpl"

    #@36
    goto :goto_0

    #@37
    .line 146
    :catch_1
    move-exception v4

    #@38
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@39
    .line 148
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    #@3a
    .local v5, "ie":Ljava/lang/InstantiationException;
    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 173
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    #@6
    invoke-virtual {v1, v0, p0}, Landroid/icu/text/TimeZoneNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/text/TimeZoneNames;

    #@c
    return-object v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 186
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getTZDBInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 202
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "The method is not implemented in TimeZoneNames base class."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract getAvailableMetaZoneIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;
    .locals 3
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J

    #@0
    .prologue
    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 288
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 289
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 290
    .local v0, "mzID":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 292
    .end local v0    # "mzID":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public abstract getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method
