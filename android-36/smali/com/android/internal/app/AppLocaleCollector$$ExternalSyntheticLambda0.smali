.class public final synthetic Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/AppLocaleCollector;->lambda$getIgnoredLocaleList$3(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
