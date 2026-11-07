.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/RateLimitingCache$ValueFetcher;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final blacklist fetchValue()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->$r8$lambda$KfaWjLSz8MRDCTZ5k_6RKNsGfys(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
