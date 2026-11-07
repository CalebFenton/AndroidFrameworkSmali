.class public final synthetic Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->lambda$static$0(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)I

    move-result p1

    return p1
.end method
