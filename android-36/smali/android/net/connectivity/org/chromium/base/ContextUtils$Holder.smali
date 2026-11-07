.class Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ContextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static blacklist sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsSharedPreferences()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 1

    sput-object p0, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->-$$Nest$smfetchAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/ContextUtils$Holder;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
