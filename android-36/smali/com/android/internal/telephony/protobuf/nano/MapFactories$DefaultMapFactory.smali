.class Lcom/android/internal/telephony/protobuf/nano/MapFactories$DefaultMapFactory;
.super Ljava/lang/Object;
.source "MapFactories.java"

# interfaces
.implements Lcom/android/internal/telephony/protobuf/nano/MapFactories$MapFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/protobuf/nano/MapFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultMapFactory"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/protobuf/nano/MapFactories$1;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/MapFactories$DefaultMapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist forMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 59
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_8
    return-object p1
.end method
