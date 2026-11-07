.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic blacklist f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->$r8$lambda$1YyUlz_MU6v02E3m84OJIEJWSyk(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
