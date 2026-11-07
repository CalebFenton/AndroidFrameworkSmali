.class public final Ldalvik/system/ZipPathValidator;
.super Ljava/lang/Object;
.source "ZipPathValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/ZipPathValidator$Callback;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:Ldalvik/system/ZipPathValidator$Callback;

.field private static volatile blacklist sInstance:Ldalvik/system/ZipPathValidator$Callback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ldalvik/system/ZipPathValidator$1;

    invoke-direct {v0}, Ldalvik/system/ZipPathValidator$1;-><init>()V

    sput-object v0, Ldalvik/system/ZipPathValidator;->DEFAULT:Ldalvik/system/ZipPathValidator$Callback;

    .line 45
    sget-object v0, Ldalvik/system/ZipPathValidator;->DEFAULT:Ldalvik/system/ZipPathValidator$Callback;

    sput-object v0, Ldalvik/system/ZipPathValidator;->sInstance:Ldalvik/system/ZipPathValidator$Callback;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api clearCallback()V
    .registers 1

    .line 52
    sget-object v0, Ldalvik/system/ZipPathValidator;->DEFAULT:Ldalvik/system/ZipPathValidator$Callback;

    sput-object v0, Ldalvik/system/ZipPathValidator;->sInstance:Ldalvik/system/ZipPathValidator$Callback;

    .line 53
    return-void
.end method

.method public static blacklist getInstance()Ldalvik/system/ZipPathValidator$Callback;
    .registers 1

    .line 76
    sget-object v0, Ldalvik/system/ZipPathValidator;->sInstance:Ldalvik/system/ZipPathValidator$Callback;

    return-object v0
.end method

.method public static blacklist isClear()Z
    .registers 2

    .line 86
    sget-object v0, Ldalvik/system/ZipPathValidator;->sInstance:Ldalvik/system/ZipPathValidator$Callback;

    sget-object v1, Ldalvik/system/ZipPathValidator;->DEFAULT:Ldalvik/system/ZipPathValidator$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api setCallback(Ldalvik/system/ZipPathValidator$Callback;)V
    .registers 2
    .param p0, "callback"    # Ldalvik/system/ZipPathValidator$Callback;

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/ZipPathValidator$Callback;

    sput-object v0, Ldalvik/system/ZipPathValidator;->sInstance:Ldalvik/system/ZipPathValidator$Callback;

    .line 66
    return-void
.end method
