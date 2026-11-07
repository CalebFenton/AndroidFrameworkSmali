.class public final synthetic Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/Logging/EventManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/EventManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;->f$0:Landroid/telecom/Logging/EventManager;

    check-cast p1, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-static {v0, p1}, Landroid/telecom/Logging/EventManager;->$r8$lambda$0-glLXSZQ7HFnDUgHQGbv9oBNM0(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$EventRecord;)V

    return-void
.end method
