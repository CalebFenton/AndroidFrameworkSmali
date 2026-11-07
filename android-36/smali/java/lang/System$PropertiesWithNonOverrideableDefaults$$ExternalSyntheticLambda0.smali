.class public final synthetic Ljava/lang/System$PropertiesWithNonOverrideableDefaults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/System$PropertiesWithNonOverrideableDefaults;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/System$PropertiesWithNonOverrideableDefaults;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults$$ExternalSyntheticLambda0;->f$0:Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults$$ExternalSyntheticLambda0;->f$0:Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    invoke-virtual {v0, p1, p2}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
