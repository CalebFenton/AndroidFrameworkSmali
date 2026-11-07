.class public final synthetic Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashSet;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    check-cast p1, Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/android/internal/app/AppLocaleStore;->lambda$filterNotMatchingLocale$0(Ljava/util/HashSet;Ljava/util/Locale;)Z

    move-result p1

    return p1
.end method
