.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/RateLimitingCache$ValueFetcher;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist fetchValue()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Landroid/app/ActivityManager;->lambda$getMyMemoryState$3()Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    return-object v0
.end method
