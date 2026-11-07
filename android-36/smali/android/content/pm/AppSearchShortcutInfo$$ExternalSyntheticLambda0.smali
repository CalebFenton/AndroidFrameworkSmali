.class public final synthetic Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->lambda$parseCapabilityBindings$3(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
