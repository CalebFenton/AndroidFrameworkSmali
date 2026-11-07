.class public final enum Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
.super Ljava/lang/Enum;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocaleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .registers 5

    .line 158
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v3, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v4, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 159
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "UNKNOWN_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 160
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "NO_SUPPORTED_LANGUAGE_IN_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 161
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "ASSET_LOCALE_IS_EMPTY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 162
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 163
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "GET_SUPPORTED_LANGUAGE_FROM_ASSET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 158
    invoke-static {}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->$values()[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->$VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    const-class v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->$VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    invoke-virtual {v0}, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-object v0
.end method
