.class public final synthetic Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashSet;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/AppLocaleCollector;->lambda$getAllAppActiveLocales$0(Ljava/util/HashSet;Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
