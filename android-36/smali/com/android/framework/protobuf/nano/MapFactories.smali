.class public final Lcom/android/framework/protobuf/nano/MapFactories;
.super Ljava/lang/Object;
.source "MapFactories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;,
        Lcom/android/framework/protobuf/nano/MapFactories$DefaultMapFactory;
    }
.end annotation


# static fields
.field private static volatile blacklist mapFactory:Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/android/framework/protobuf/nano/MapFactories$DefaultMapFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/MapFactories$DefaultMapFactory;-><init>(Lcom/android/framework/protobuf/nano/MapFactories$1;)V

    sput-object v0, Lcom/android/framework/protobuf/nano/MapFactories;->mapFactory:Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMapFactory()Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;
    .registers 1

    .line 53
    sget-object v0, Lcom/android/framework/protobuf/nano/MapFactories;->mapFactory:Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    return-object v0
.end method

.method static blacklist setMapFactory(Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;)V
    .registers 1
    .param p0, "newMapFactory"    # Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    .line 49
    sput-object p0, Lcom/android/framework/protobuf/nano/MapFactories;->mapFactory:Lcom/android/framework/protobuf/nano/MapFactories$MapFactory;

    .line 50
    return-void
.end method
