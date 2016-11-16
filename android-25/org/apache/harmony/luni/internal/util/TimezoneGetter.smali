.class public abstract Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
.super Ljava/lang/Object;
.source "TimezoneGetter.java"


# static fields
.field private static instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@2
    return-object v0
.end method

.method public static setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V
    .locals 2
    .param p0, "getter"    # Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@0
    .prologue
    .line 43
    sget-object v0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "TimezoneGetter instance already set"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 46
    :cond_0
    sput-object p0, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->instance:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    #@f
    .line 42
    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
