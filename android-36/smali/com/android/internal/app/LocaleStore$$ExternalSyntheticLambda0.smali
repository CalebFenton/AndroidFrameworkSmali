.class public final synthetic Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p1, Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/android/internal/app/LocaleStore;->lambda$fillCache$0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Locale;)V

    return-void
.end method
