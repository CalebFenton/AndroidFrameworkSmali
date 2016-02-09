.class public final Llibcore/util/ZoneInfoDB;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfoDB$TzData;
    }
.end annotation


# static fields
.field private static final DATA:Llibcore/util/ZoneInfoDB$TzData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 44
    new-instance v0, Llibcore/util/ZoneInfoDB$TzData;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "ANDROID_DATA"

    #@d
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "/misc/zoneinfo/current/tzdata"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x0

    #@21
    aput-object v2, v1, v3

    #@23
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "ANDROID_ROOT"

    #@2b
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, "/usr/share/zoneinfo/tzdata"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    const/4 v3, 0x1

    #@3f
    aput-object v2, v1, v3

    #@41
    .line 44
    invoke-direct {v0, v1}, Llibcore/util/ZoneInfoDB$TzData;-><init>([Ljava/lang/String;)V

    #@44
    .line 43
    sput-object v0, Llibcore/util/ZoneInfoDB;->DATA:Llibcore/util/ZoneInfoDB$TzData;

    #@46
    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Llibcore/util/ZoneInfoDB$TzData;
    .locals 1

    #@0
    .prologue
    .line 262
    sget-object v0, Llibcore/util/ZoneInfoDB;->DATA:Llibcore/util/ZoneInfoDB$TzData;

    #@2
    return-object v0
.end method
